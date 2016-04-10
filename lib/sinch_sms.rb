require 'sinch_sms'
require "json"


smsresult = SinchSms.send(ENV['SINCH_TEXTSTUDY_API_KEY'], ENV['SINCH_TEXTSTUDY_API_SECRET'], 'What is one right or freedom from the First Amendment? \na) speech \nb) religion \nc) assembly \nd) press', '+9174179542')
# 19177087156
puts smsresult

smsId = smsresult["messageId"]
puts smsId

# smsStatus = SinchSms.status(ENV['SINCH_TEXTSTUDY_API_KEY'], ENV['SINCH_TEXTSTUDY_API_SECRET'], 'smsId')
# smsStatus = SinchSms.status(ENV['SINCH_TEXTSTUDY_API_KEY'], ENV['SINCH_TEXTSTUDY_API_SECRET'], '125664654')

# puts smsStatus

