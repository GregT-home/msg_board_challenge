class RepliesController < ApplicationController
  def new
    @posting = Posting.find(params[:posting_id])
    @reply = @posting.replies.new
  end

  def create
    @posting = Posting.find(params[:posting_id])
    @reply = @posting.replies.build(sanitized_params)
    @reply.user_id = current_user.id
    if @reply.save
      redirect_to root_path
    else
      binding.pry
      render 'new'
    end
  end

  private

  def sanitized_params
    params.require(:reply).permit(:content)
  end
end
