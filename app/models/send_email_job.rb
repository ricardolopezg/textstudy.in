class SendEmailJob
  def send_simple_message
    RestClient.post "https://api:key-b2e0f0e2f0ce55fbc68d549391ce3261"\
    "@api.mailgun.net/v3/sandbox24f885b437404fb9a8124246397ced91.mailgun.org/messages",
    :from => "Mailgun Sandbox <postmaster@sandbox24f885b437404fb9a8124246397ced91.mailgun.org>",
    :to => "Ricardo Lopez <ricardo.lopez.a@gmail.com>",
    :subject => "Hello Ricardo Lopez",
    :text => "Congratulations Ricardo Lopez, you just sent an email with Mailgun!  You are truly awesome!  You can see a record of this email in your logs: https://mailgun.com/cp/log .  You can send up to 300 emails/day from this sandbox server.  Next, you should add your own domain so you can send 10,000 emails/month for free."
  end
end
