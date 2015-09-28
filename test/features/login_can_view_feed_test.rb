require "test_helper"

class LoginCanViewFeedTest < Capybara::Rails::TestCase

  test "Can sign out" do
    me = User.create email: 'neal@example.com', password: '12345678'

    visit root_path

    fill_in "Email", with: 'neal@example.com'
    fill_in "Password", with: '12345678'
    click_button 'Sign In'

    assert_content page, '#TheSecret'

    click_link 'Sign Out'

    refute_content page, '#TheSecret'
  end

  test "Cannot view feed when not logged in" do
    me = User.create email: 'neal@example.com', password: '12345678'

    visit root_path
    refute_content page, '#TheSecret'
  end

  test "Can view feed when logged in" do
    me = User.create email: 'neal@example.com', password: '12345678'

    visit root_path

    fill_in "Email", with: 'neal@example.com'
    fill_in "Password", with: '12345678'
    click_button 'Sign In'

    assert_content page, '#TheSecret'
  end

end
