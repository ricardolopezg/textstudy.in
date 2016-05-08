require 'test_helper'

class ModelMailerTest < ActionMailer::TestCase
  test "general_email_question" do
    mail = ModelMailer.general_email_question
    assert_equal "General email question", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
