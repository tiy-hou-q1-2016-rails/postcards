require 'test_helper'

class PostcardsMailerTest < ActionMailer::TestCase
  test "new_card" do
    mail = PostcardsMailer.new_card
    assert_equal "New card", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
