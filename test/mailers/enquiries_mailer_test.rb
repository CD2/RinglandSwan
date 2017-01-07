require 'test_helper'

class EnquiriesMailerTest < ActionMailer::TestCase
  test "booking" do
    mail = EnquiriesMailer.booking
    assert_equal "Booking", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "enquiry" do
    mail = EnquiriesMailer.enquiry
    assert_equal "Enquiry", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
