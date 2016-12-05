module ApplicationHelper
  # The last 10 or fewer are the "latest"
  def latest_posts
    [Posting.count, 10].min
  end
end
