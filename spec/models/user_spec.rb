require 'rails_helper'

RSpec.describe User, type: :model do
  let (:user) { FactoryGirl.create :user }

  it "has an email" do
    expect(user.email).not_to be_nil
  end

  it "has a user name" do
    expect(user.name).not_to be_nil
  end

  it "associated postings should be destroyed" do
    user.save!
    post_count = user.postings.count
    user.postings.create!(content: "This is a test")
    expect(post_count).to be < user.postings.count
  end
end
