class ReceiveTextsController < ApplicationController
  twilio_sid = ENV["TWILIO_ACCOUNT_SID_2"]
  twilio_token = ENV["TWILIO_AUTH_TOKEN_2"]
  @@twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
  @@twilio_phone_number = ENV["TWILIO_MESSAGING_SERVICE_SID_2"]


  def logs
    @twilio_client = @@twilio_client
  end


  def response_message
    from = params[:From]
    body = params[:Body]

    correct_answer = Question.where(question: Question.where(id: Response.where(to_number: from).last.question_id).first.question).first.correct_answer
    
    explanation = Question.where(question: Question.where(id: Response.where(to_number: from).last.question_id).first.question).first.explanation
    
    # user_last_received_question = Question.where(id: Response.where(to_number: from).last.question_id).first.question


    @twiml = Twilio::TwiML::Response.new do |r|
      if body == correct_answer
          r.Message "Correct."
      else
          r.Message explanation
      end
    end
    
    # render makes response happen
    render 'response_message.xml.erb', :content_type => 'text/xml'
  end

   
end

