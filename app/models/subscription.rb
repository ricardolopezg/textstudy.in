class Subscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject
  validate :check_activations, on: :update
  # validates_uniqueness_of :active, if: :active,  conditions: -> { where.(user_id: current_user.id) }
  # validates_uniqueness_of :active, if: :active
  # validates :active, uniqueness: true, if: :active

  def check_activations
    if Subscription.where(active: true, user_id: user_id).any? and active
      errors.add(:active, "Deactive other subscription first")
    end
  end  

  twilio_sid = ENV["TWILIO_ACCOUNT_SID_1"]
  twilio_token = ENV["TWILIO_AUTH_TOKEN_1"]
  @@twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token


  def list_message_data
    @@twilio_client.account.messages.list.each do |m|
      puts m.date_sent
      puts m.from
      puts m.body
    end    
  end
  
  
end
