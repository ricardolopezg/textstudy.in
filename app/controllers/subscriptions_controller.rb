class SubscriptionsController < ApplicationController

  def active
    @subscription = Subscription.find(params[:id])
    @subscription.active ? @subscription.update(active: false) : @subscription.update(active: true)
    # @active_subscription_subject = Subject.find(Subscription.where(user_id: 47, active: true).first.subject_id).name
    # @active_subscription_subsection = Subject.find(Subscription.where(user_id: 47, active: true).first.subject_id).subsection
    # if @subscription.active == true
    #   @subscription.update_attributes(active: false)
    #   @active_status = "Deactivate"
    #   @other_status = "Activate"
    # else
    #   @subscription.update_attributes(active: true)
    #   @active_status = "Activate"
    #   @other_status = "Deactivate"
    # end
  end


end
