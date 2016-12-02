require 'rails_helper'

RSpec.describe Posting, type: :model do
  before :each do
    @user = FactoryGirl.create :user
    @posting = @user.postings.build content: "Test content."
  end

  it "is valid" do
    expect(@posting).to be_valid
  end

  describe "user_id" do
    it "is required" do
      @posting.user = nil
      expect(@posting).not_to be_valid
    end
  end
end
