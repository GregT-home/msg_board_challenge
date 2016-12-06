class Spinach::Features::Users < Spinach::FeatureSteps
  include Helpers

  step 'I am signed in' do
    visit new_user_session_path
    sign_in_user
  end

  step 'I click User List' do
    find(".actions").click_link "User List"
    sync_page
  end

  step 'I see the User List page' do
    expect(page.title).to eq("User List")
  end

  step 'I see a list of users' do
    expect(page).to have_css("table.user-list")
    expect(page).to have_css("#user-#{@user.id}")
  end

  step 'I click my user name' do
    click_on @user.name
  end

  step 'I click on a user name' do
    click_on @other_user.name
  end

  step 'I see my profile page' do
    expect(page.title).to eq(@user.name)
  end

  step 'at least one other user exists' do
    @other_user = FactoryGirl.create :user
  end

  step 'I see their profile page' do
    expect(page.title).to eq(@other_user.name)
  end
end
