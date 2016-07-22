# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Use SMTP for mailers
# Rails.config.action_mailer.delivery_method = :smtp
# Rails.config.action_mailer.raise_delivery_errors = true
# Rails.config.action_mailer.perform_deliveries = true
# ActionMailer::Base.default_content_type = "text/html"