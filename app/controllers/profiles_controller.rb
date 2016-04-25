class ProfilesController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @current_user = User.find(current_user.id)
    @current_user_full_name = @current_user.profile.fname + " " + User.find(current_user.id).profile.lname
    @current_user_profile = @current_user.profile
    @current_profile = Profile.find(params[:id])
  end

  def dashboard
  end

  def edit
    @current_user = User.find(current_user.id)
    @current_user_profile = @current_user.profile
    @current_profile = Profile.find(params[:id])
  end

  def update
    @current_profile = Profile.find(params[:id])


  end

  def subjects
    @subjects = Subject.all
    @subscriptions = Subscription.all
    @current_user_subscriptions = Subscription.where(user_id: current_user.id)
  end


private
  def profile_params
    params.require(:subscription).permit(:active)
    params.require(:profile).permit(:fname)
  end
end
