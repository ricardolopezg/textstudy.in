class ProfilesController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @current_user = User.find(current_user.id)
    @current_profile = Profile.find(params[:id])
  end

  def dashboard
    @current_user = User.find(current_user.id)
    @responses = Response.where(user_id: @current_user).order('id DESC').paginate(page: params[:page], per_page: 10)
    
    # if params[:search]
    #   @responses = Response.where(user_id: @current_user).search(params[:search]).order('id DESC').paginate(page: params[:page], per_page: 5).joins(:questions, :subjects)
    #   # @questions = Question.search(params[:search]).order('id DESC')
    #   # @subjects = Subject.search(params[:search]).order('id DESC')
    # end
  end

  def subjects
    @subjects = Subject.all
    @current_user_subscriptions = Subscription.where(user_id: current_user.id)
    @current_user_subscription_true = Subscription.where(user_id: current_user.id, active: true)

    profile = current_user.profile

    if profile.stripe_customer_id.present?
      @customer = Stripe::Customer.retrieve(profile.stripe_customer_id)
    end

    if @customer.subscriptions.data.present?
      @history = @customer.subscriptions.data
      @status = @history.first.status
      @plan = @history.first.plan.name
    end

  end

  def edit
    @current_user = User.find(current_user.id)
    @current_profile = Profile.find(params[:id])
  end

  def update
    @current_profile = Profile.find(params[:id])
    @current_profile.update(profile_params)

    respond_to do |format|
      if @current_profile.update_attributes(profile_params)
        format.html { redirect_to(@current_profile, :notice => 'User was successfully updated.') }
        format.json { respond_with_bip(@current_profile) }
      else
        format.html { render :action => "show" }
        format.json { respond_with_bip(@current_profile) }
      end
    end
  end

  def billing
    profile = current_user.profile

    if profile.stripe_customer_id.present?
      @customer = Stripe::Customer.retrieve(profile.stripe_customer_id)
    end

    if @customer.subscriptions.data.last.status == "active"
      @active = true
      # @history = Stripe::Charge.list(:customer => profile.stripe_customer_id)
      @history = @customer.subscriptions.data
      @plan = @history.first.plan.name
    end

  end

  def customer
    token = params[:stripeToken]
    email = params[:stripeEmail]

    profile = current_user.profile
    
    if profile.stripe_customer_id.blank?

      customer = Stripe::Customer.create(
        :email => email,
        :source => token
      )

      profile.update(
        stripe_customer_id: customer.id,
        status: 'paid'
      )


    else
      customer = Stripe::Customer.retrieve(profile.stripe_customer_id)
      customer.source = token
      customer.save
    end

    redirect_to billing_profiles_path

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to redirect_to billing_profiles_path
  end

  def plan
    profile = current_user.profile
    customer = Stripe::Customer.retrieve(profile.stripe_customer_id)

    @plan = params[:plan]

    Stripe::Subscription.create(
      :customer => customer.id,
      :plan => @plan
    )

    profile.update(
      status: 'active',
      plan: @plan
    )

    redirect_to billing_profiles_path
  end

  def cancel
    profile = current_user.profile
    customer = Stripe::Customer.retrieve(profile.stripe_customer_id)

    subscription = Stripe::Subscription.retrieve(customer.subscriptions.data.first.id)

    subscription.delete(:at_period_end => true)

    redirect_to billing_profiles_path
  end

  def reactivate
    profile = current_user.profile
    customer = Stripe::Customer.retrieve(profile.stripe_customer_id)

    subscription = Stripe::Subscription.retrieve(customer.subscriptions.data.first.id)

    subscription.plan = subscription.plan.name
    subscription.save

    redirect_to billing_profiles_path
  end

private
  def profile_params
    params.require(:profile).permit(:fname, :lname, :mobile_phone, :alt_phone, :billing_phone, :billing_address1, :billing_address2, :billing_city, :billing_state, :billing_zip, :billing_country, :birthday, :avatar, :stripe_customer_id, :plan, :status)
  end
  
  def subscription_params
    params.require(:subscription).permit(:active)
  end

end