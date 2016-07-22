class SubscribeUserToMailingListJob < ActiveJob::Base
  queue_as :default

  def perform(user)
    gibbon = Gibbon::Request.new
    # gibbon.lists.subscribe({
    #   :id => ENV["MAILCHIMP_MASTER_LIST"], 
    #   :email => {
    #     :email => user.email
    #     }, 
    #   :double_optin => false
    # })

    gibbon.lists(ENV["MAILCHIMP_MASTER_LIST"]).members.create(
      body: {
        email_address: user.email, 
        # status: "subscribed", 
        # merge_fields: {
          # FNAME: "First Name", 
          # LNAME: "Last Name"
        # }
      }
    )
  

  end
end
