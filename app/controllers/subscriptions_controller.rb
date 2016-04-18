class SubscriptionsController < ApplicationController

  def active
    @subscription = Subscription.find(params[:id])
    
    if @subscription.active == true
      @subscription.update_attributes(active: false)
      @active_status = "Deactivate"
      @other_status = "Activate"
    else
      @subscription.update_attributes(active: true)
      @active_status = "Activate"
      @other_status = "Deactivate"
    end
  end


end
