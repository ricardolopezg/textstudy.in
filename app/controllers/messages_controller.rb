require 'sinch_sms'
require "json"

class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def index
    @questions = Question.all
  end

  def create
    message_body = params["Body"]
    from_number = params["From"]
    
    SinchSms.send(ENV['SINCH_TEXTSTUDY_API_KEY'], ENV['SINCH_TEXTSTUDY_API_SECRET'], 'What is one right or freedom from the First Amendment? \na) speech \nb) religion \nc) assembly \nd) press', '+19177087156')
  end

end
