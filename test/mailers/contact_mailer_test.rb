require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "contact_request" do
    mail = ContactMailer.contact_request
    assert_equal "Contact request", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
