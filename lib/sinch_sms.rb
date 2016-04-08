require 'sinch_sms'
require "json"


smsresult = SinchSms.send(ENV['SINCH_TEXTSTUDY_API_KEY'], ENV['SINCH_TEXTSTUDY_API_SECRET'], 'What is one right or freedom from the First Amendment? \n a)speech \n b)religion \n c)assembly \n d)press', '+19174179542')

puts smsresult

smsId = smsresult["messageId"]
puts smsId

# smsStatus = SinchSms.status(ENV['SINCH_TEXTSTUDY_API_KEY'], ENV['SINCH_TEXTSTUDY_API_SECRET'], 'smsId')
# smsStatus = SinchSms.status(ENV['SINCH_TEXTSTUDY_API_KEY'], ENV['SINCH_TEXTSTUDY_API_SECRET'], '125664654')

# puts smsStatus

