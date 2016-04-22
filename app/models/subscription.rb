class Subscription < ActiveRecord::Base
  belongs_to :user

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
