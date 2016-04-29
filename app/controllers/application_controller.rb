class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(user)
    after(user.email)
  end
  
  def after_sign_up_path_for(user)
    after(user.email)
  end
  
  #keep your code DRY!
  def after(email)
    #temporarily store ticket in session
    session[:ticket] = get_auth_ticket(email)
    # dashboard_profile_path(current_user.profile.id)
    profile_path(current_user.profile.id)
  end
  
  #generate ticket for Sinch authentication
  def get_auth_ticket(username)
    user_ticket = {
      "identity" => {"type" => "username", "endpoint" => username},
      "expiresIn" => 3600, #seconds
      "applicationKey" => ENV['SINCH_TEXTSTUDY_API_KEY'],
      "created" => Time.now.utc.iso8601
    }
    user_ticket_json = user_ticket.to_json.gsub(/\s+/, "")
      user_ticket_base64 = Base64.encode64(user_ticket_json).strip
      digest = OpenSSL::HMAC.digest(OpenSSL::Digest.new('sha256'), Base64.decode64(ENV['SINCH_TEXTSTUDY_API_SECRET']), user_ticket_json).strip
      signature = Base64.encode64(digest).strip
      return (user_ticket_base64 + ':' + signature).gsub(/\s+/, "")
  end
end
