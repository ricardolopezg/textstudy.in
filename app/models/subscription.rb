class Subscription < ActiveRecord::Base
  belongs_to :user
  # validate :one_active_subscription

  twilio_sid = ENV["TWILIO_ACCOUNT_SID_1"]
  twilio_token = ENV["TWILIO_AUTH_TOKEN_1"]
  @@twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

  def one_active_subscription
    if expiration_date.present? && expiration_date < Date.today
      errors.add(:expiration_date, "can't be in the past")
    end
  end

  def list_message_data
    @@twilio_client.account.messages.list.each do |m|
      puts m.date_sent
      puts m.from
      puts m.body
    end    
  end
  
  
end
