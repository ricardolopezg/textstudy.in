class AccountsController < ApplicationController

  def show
    @current_user = User.find(current_user.id)
    @current_user_full_name = User.find(current_user.id).profile.fname + " " + User.find(current_user.id).profile.lname
    @subjects = Subject.all
    @subscriptions = Subscription.all
    @current_user_subscriptions = Subscription.where(user_id: current_user.id)
  end


private
  def profile_params
    params.require(:subscription).permit(:active)
  end

end


