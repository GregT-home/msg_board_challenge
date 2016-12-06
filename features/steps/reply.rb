class Spinach::Features::Reply < Spinach::FeatureSteps
  include Helpers

  step 'I am signed in' do
    visit new_user_session_path
    sign_in_user
  end

   step 'I navigate to a user\'s Profile page' do
     visit user_path(@other_user.id)
   end

  step 'there is at least one posting on the Root Page' do
    @posting = @user.postings.create!(content: "Is this an interesting post?")
    visit current_path # refresh the page so the post is visible
  end

  step 'there is at least one other user' do
    @other_user = FactoryGirl.create :user
  end

  step 'that user has at least one post' do
    @test_other_content = "Now, THIS is an interesting post"
    @other_user.postings.create!(content: @test_other_content)
  end

  step 'I click Reply for a posting' do
    first(:link, 'Reply').click
    sync_page
  end

  step 'I see the Reply page for that posting' do
    expect(page.title).to eq("Reply")
  end

  step 'I type a reply' do
    @test_content = "Yes, interesting topic!"
    fill_in("reply_content", with: @test_content)
  end

  step 'I click Send' do
    click_on "Send"
    sync_page
  end

  step 'I see the reply on the Root page' do
    expect(page.title).to eq("Message Board")
    expect(find("#reply-#{Reply.last.id}")).to  have_text(@test_content)
  end

  step 'I see the reply' do
    expect(find("#reply-#{Reply.last.id}")).to  have_text(@test_content)
  end
end
