class Spinach::Features::SignOut < Spinach::FeatureSteps
  include Helpers

  step "I am signed in" do
    visit new_user_session_path
    sign_in_user
  end

  step 'I navigate to Sign Out' do
    visit destroy_user_session_path
    sync_page
  end

  step 'I am sent to the Root page' do
    expect(page.title).to eq("Message Board")
  end

  step 'I see a success message containing "Signed out successfully"' do
    has_flash_msg(severity: :notice, containing: "Signed out successfully")
  end
end
