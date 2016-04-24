class AccountsController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @current_user = User.find(current_user.id)
    @current_user_full_name = @current_user.profile.fname + " " + User.find(current_user.id).profile.lname
  end

  def dashboard
  end

  def edit
    
  end

  def contact


  end

  def subjects
    @subjects = Subject.all
    @subscriptions = Subscription.all
    @current_user_subscriptions = Subscription.where(user_id: current_user.id)
  end


private
  def profile_params
    params.require(:subscription).permit(:active)
  end

end


