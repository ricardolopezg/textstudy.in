class ProfilesController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @current_user = User.find(current_user.id)
    @current_profile = Profile.find(params[:id])
  end

  def dashboard
    @current_user = User.find(current_user.id)
    @responses = Response.where(user_id: @current_user).order('id DESC').paginate(page: params[:page], per_page: 5)
    
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


private
  def profile_params
    params.require(:profile).permit(:fname, :lname, :mobile_phone, :alt_phone, :billing_phone, :billing_address1, :billing_address2, :billing_city, :billing_state, :billing_zip, :billing_country, :birthday, :avatar)
  end
  
  def subscription_params
    params.require(:subscription).permit(:active)
  end

end