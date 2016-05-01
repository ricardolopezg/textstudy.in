class ProfilesController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @current_user = User.find(current_user.id)
    @current_profile = Profile.find(params[:id])
  end

  def dashboard
  end
  
  def subjects
    @subjects = Subject.all
    @current_user_subscriptions = Subscription.where(user_id: current_user.id)
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