class ReceiveTextsController < ApplicationController
  twilio_sid = ENV["TWILIO_ACCOUNT_SID_1"]
  twilio_token = ENV["TWILIO_AUTH_TOKEN_1"]
  @@twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
  @@twilio_phone_number = ENV["TWILIO_MESSAGING_SERVICE_SID_1"]


  def logs
    @twilio_client = @@twilio_client
  end


  def response_message
    from = params[:From]
    body = params[:Body]

    correct_answer = Question.where(body: Question.where(id: Response.where(to_number: from).last.question_id).first.body).first.correct_answer

    explanation = Question.where(body: Question.where(id: Response.where(to_number: from).last.question_id).first.body).first.explanation

    user_response = Response.where(to_number: from).last.user_response

    # user_last_received_question = Question.where(id: Response.where(to_number: from).last.question_id).first.body

    @twiml = Twilio::TwiML::Response.new do |r|
      if body == correct_answer
          if user_response.nil?
            r.Message "Correct."
            Response.where(to_number: from).last.update_attributes(user_response: body, response_status: "Correct")
          else 
            r.Message "You can only respond once per question."
          end
      elsif %w( 1 2 3 4 5 6 7 8 9 10 ).include? body
          if user_response.nil?
            r.Message explanation
            Response.where(to_number: from).last.update_attributes(user_response: body, response_status: "Wrong")
          else 
            r.Message "You can only respond once per question."
          end
      else
        r.Message "Please send only the number of your response. For Example, type 1 for choice 1."    
      end
    end

    # render makes response happen
    render text: @twiml.text
    # render 'response_message.xml.erb'
    # render 'response_message.xml.erb', :content_type => 'text/xml'
    # render 'response_message.xml.erb', :content_type => 'text/html'
    # render 'response_message.xml.erb', :content_type => 'text/plain'
  end

end

