require "test_helper"

class SignoutabilityTest < Capybara::Rails::TestCase
  setup do
    me = User.create! email: "me@example.com",
                      password: "12345678"

    visit root_path
    fill_in "Email", with: "me@example.com"
    fill_in "Password", with: "12345678"
    click_button "Sign In"

    click_link "Sign Out"
  end
  test "sanity" do
    refute_content page, "me@example.com"
  end
end
