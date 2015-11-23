require "test_helper"

class FollowingUserTestTest < Capybara::Rails::TestCase
    test "If I am following Brian, I can unfollow" do
      me = User.create email: "me@example.com", password: "12345678"
      jwo = User.create email: "brian@example.com", password: "12345678"
      jwo.links.create entry: "Christian is awesome."
      jwo.links.create entry: "I am awesomer."

      me.follow brian

      visit root_path
      fill_in "Email", with: "me@example.com"
      fill_in "Password", with: "12345678"
      click_button "Sign In"

      asset_content page, "Christian is awesome."

    #   click_link "Stop Following brian@example.com"
    #
    # assert_content page, "You have stopped following brian@example.com"
    # assert_equal false, me.following?(brian)
  end
end
