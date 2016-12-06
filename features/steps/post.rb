class Spinach::Features::Post < Spinach::FeatureSteps
  include Helpers

  step 'I am signed in' do
    visit new_user_session_path
    sign_in_user
  end

   step 'I navigate to my profile page' do
     find(".actions").click_on @user.name
   end

  step 'I click Create Post' do
    click_on "Create Post"
    sync_page
  end

  step 'I see the New Posting page' do
    expect(page.title).to eq("New Posting")
  end

  step 'I enter post content' do
    @test_content = "test post"
    fill_in("posting_content", with: @test_content)
  end

  step 'I click Post' do
    click_on "Post"
    sync_page
  end

  step 'I see the posting on my Profile page' do
    expect(page.title).to eq(@user.name)
    expect(find("#posting-#{Posting.last.id}")).to  have_text(@test_content)
  end

   step 'I navigate to the Root page' do
     visit root_path
   end

  step 'I see the posting on the Root page' do
    expect(page.title).to eq("Message Board")
    expect(find("#posting-#{Posting.last.id}")).to  have_text(@test_content)
  end
end
