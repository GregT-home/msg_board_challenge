module ApplicationHelper

  def latest_postings
    Posting.order(created_at: :desc).take(latest_count)
  end

  # The last 10 or fewer are the "latest"
  def latest_count
    [Posting.count, 10].min
  end

  private

  def after_sign_in_path_for(resource)
    root_path
  end
end
