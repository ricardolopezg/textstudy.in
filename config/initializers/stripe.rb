# Rails.configuration.stripe = {
#   :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY_TEST'],
#   :secret_key      => ENV['STRIPE_SECRET_KEY_TEST']
# }

# Stripe.api_key = Rails.configuration.stripe[:secret_key]

if Rails.env == 'production'
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key      => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY_TEST'],
    :secret_key      => ENV['STRIPE_SECRET_KEY_TEST']
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]