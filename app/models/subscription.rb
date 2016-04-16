class Subscription < ActiveRecord::Base
  belongs_to :user

  twilio_sid = ENV["TWILIO_ACCOUNT_SID_1"]
  twilio_token = ENV["TWILIO_AUTH_TOKEN_1"]
  @@twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
  @@twilio_phone_number = ENV["TWILIO_MESSAGING_SERVICE_SID_1"]
  # after_create :send_sms_questions


  def list_message_data
    @@twilio_client.account.messages.list.each do |m|
      puts m.date_sent
      puts m.from
      puts m.body
    end    
  end

# Response.where.not(user_response: nil).map{|s| s.user.profile.mobile_phone}.uniq

  def send_sms_questions
    # TWILIO ACCOUNT INFO
    subscription_nums_to_text = Subscription.where(active:true).map{|s| s.user.profile.mobile_phone}

    for i in subscription_nums_to_text
      number_to_send_to = i
      user_id = Profile.where(mobile_phone: number_to_send_to).first.user_id
      message_to_send = Question.where(subject_id: Subscription.where(user_id: user_id).map{|s| s.subject_id}).map{|q| q.body}.sample
      question_id = Question.where(body: message_to_send).first.id
      question_version = Question.where(body: message_to_send).first.version


        # CREATE MESSAGE
        @@twilio_client.account.messages.create(
          :from => @@twilio_phone_number,
          :to => number_to_send_to,
          :body => message_to_send
        )
      

      Response.create(user_id: user_id, to_number: number_to_send_to, from_number: @@twilio_phone_number, question_id: question_id, question_version: question_version)
    end # end subscription_nums_to_text loop

    # @twilio_client.account.messages.list.each do |message|
    # Rails.logger.info message.to
    # Rails.logger.info message.from
    # Rails.logger.info message.body
    # end
  end

  # def time_to_run
  #   time = Time.new
  #   time + 1.second
  #   # time.hour == 19 
  # end

  # handle_asynchronously :send_sms_questions, :run_at => Proc.new { |i| i.time_to_run }

  
end
