require "test_helper"

class LoginCanViewFeedTest < Capybara::Rails::TestCase
  test "Cannot view feed when not logged in" do
    me = User.create email: 'neal@example.com', password_digest: '12345678'

    visit root_path
    assert_content page, "Please sign in"
    refute_content page, '#TheSecret'
  end
end
