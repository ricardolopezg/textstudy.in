class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def reply
    # message_body = params["Body"]
    # from_number = params["From"]
    content_type 'text/xml' 

    response = Twilio::TwiMl::Response new do |r|
      r.Message "Hey thanks for your message!"
    end

    response.to_xml
  end

end
