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
    if profile.status == 'active'
      @active = true
      @history = Stripe::Charge.list(:customer => profile.stripe_customer_id)
  
      @customer = Stripe::Customer.retrieve(profile.  stripe_customer_id)
      @plan = profile.plan
    end

  end

  def customer
    token = params[:stripeToken]
    email = params[:stripeEmail]

    #if customer exists i just want to u;date their card info only!!! - not create another one

    profile = current_user.profile
    
    if profile.stripe_customer_id.blank?

      customer = Stripe::Customer.create(
        :email => email,
        :source => token
      )

    else
      customer = Stripe::Customer.retrieve(profile.stripe_customer_id)
      customer.source = token
      customer.save
    end

    profile.update(stripe_customer_id: customer.id)

    if profile.save
      redirect_to billing_profiles_path
    end

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to redirect_to billing_profiles_path
  end

  def plan
    profile = current_user.profile




    profile.status = 'active'
  end

private
  def profile_params
    params.require(:profile).permit(:fname, :lname, :mobile_phone, :alt_phone, :billing_phone, :billing_address1, :billing_address2, :billing_city, :billing_state, :billing_zip, :billing_country, :birthday, :avatar, :stripe_customer_id, :plan, :status)
  end
  
  def subscription_params
    params.require(:subscription).permit(:active)
  end

end