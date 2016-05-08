class ModelMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.general_email_question.subject
  #
  def general_email_question
    @greeting = "Hi"

    # mail to: "to@example.org"
    email = mail from: 'rick2nyce@gmail.com', to: 'ricardo.lopez.a@gmail.com', subject: 'this is an email'
  end
end
