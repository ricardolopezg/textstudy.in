class UserMailer < ApplicationMailer
  default from: "support@textprep.co"
 
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: "Welcome to Text Prep!")
  end
end
