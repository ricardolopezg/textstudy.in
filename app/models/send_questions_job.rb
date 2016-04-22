class SendQuestionsJob
  twilio_sid = ENV["TWILIO_ACCOUNT_SID_1"]
  twilio_token = ENV["TWILIO_AUTH_TOKEN_1"]
  @@twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
  @@twilio_phone_number = ENV["TWILIO_MESSAGING_SERVICE_SID_1"]

  include Delayed::RecurringJob
  # run_every 3.days
  run_every 1.day
  run_at '8:06PM'
  run_at '8:07PM'
  run_at '8:08PM'
  run_at '8:09PM'
  run_at '8:10PM'
  run_at '8:11PM'
  run_at '8:12PM'
  run_at '8:13PM'
  run_at '8:14PM'
  run_at '8:15PM'
  run_at '8:16PM'
  run_at '8:17PM'
  run_at '8:18PM'
  run_at '8:19PM'
  run_at '8:20PM'
  timezone 'US/Eastern'
  queue 'slow-jobs'

  def perform
    # TWILIO ACCOUNT INFO
    subscription_nums_to_text = Subscription.where(active:true).map{|s| s.user.profile.mobile_phone}

    subscription_nums_to_text.each do |number_to_send_to|
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
  #   time + 10.seconds
  #   time.hour == 21
  #   time.minute == 28 
  #   10.seconds.from_now
  # end

  # handle_asynchronously :send_sms_questions, :run_at => Proc.new { |i| i.time_to_run }
  # handle_asynchronously :perform, :run_at => Proc.new { |i| i.time_to_run }

end