class Spinach::Features::SignIn < Spinach::FeatureSteps
  include Helpers

  step 'I am not signed in' do
    visit new_user_session_path
    expect(page.title).to eq("Sign In")
  end

  step 'I am sent to the Root page' do
    expect(page.title).to eq("Message Board")
  end

  step 'I enter my registered email' do
    @user = FactoryGirl.create(:user, password: STARTER_PASSWORD)
    fill_in("user_email", with: @user.email)
  end

  step 'I enter the associated password' do
    fill_in("user_password", with: STARTER_PASSWORD)
  end

  step 'I enter an unregistered email' do
    fill_in("user_email", with: "not_registered@user.com")
  end

  step 'I enter an invalid password' do
    fill_in("user_password", with: "incorrect-password")
  end

  step 'I click Sign In' do
    click_on "Sign in"
    sync_page
  end

  step 'I see a success message containing "Signed in successfully"' do
    has_flash_msg(severity: :notice, containing: "Signed in successfully")
  end

  step 'I see an alert containing "Invalid email or password"' do
    has_flash_msg(severity: :alert, containing: "Invalid email or password")
  end

  step 'I see my user name' do
    expect(page).to have_content(@user.name)
  end
end
