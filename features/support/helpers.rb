module Helpers
  include Spinach::DSL
  #
  # Methods in this module provide shorthand, handy, or
  # semantic equivalents for operations performed
  # frequently in step.rb files.
  #
  # @user is available in the Spinach steps
  #
  def sign_in_user
    @user = FactoryGirl.create(:user, password: STARTER_PASSWORD)
    do_login(@user, STARTER_PASSWORD)
  end

  def sync_page
    page.has_css?("nav")
  end

  def has_flash_msg(severity: , containing: )
    expect(page.find(".flash-#{severity.to_s}").text).to match(/.*#{containing}.*/i)
  end

  private

  def do_login(user, password)
    visit new_user_session_path
    fill_in "user_email", with: user.email
    fill_in "user_password", with: password
    click_button 'Sign in'
    sync_page
  end
end
