class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @postings = @user.postings
  end
end
