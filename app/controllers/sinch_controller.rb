class SinchController < ApplicationController
  before_action :authenticate_user!
  
  # to make the ticket accessible in the view:
  def index
    @ticket = session[:ticket]
      session[:ticket] = nil
      redirect_to new_user_session_path if @ticket == nil

  end
end
