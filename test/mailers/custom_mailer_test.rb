require 'test_helper'

class CustomMailerTest < ActionMailer::TestCase
  test "custom_message" do
    mail = CustomMailer.custom_message
    assert_equal "Custom message", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
