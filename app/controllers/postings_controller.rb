class PostingsController < ApplicationController
  def new
    @posting = current_user.postings.new
  end

  def create
    @posting = current_user.postings.build(sanitized_params)
    if @posting.save
      redirect_to user_path(current_user), notice: "Posting created!"
    else
      redirect_to user_path(current_user), alert: "Posting failed!"
    end
  end

  def destroy
  end

  def index
    @postings = Posting.all
  end

  private

  def sanitized_params
    params.require(:posting).permit(:content)
  end
end
