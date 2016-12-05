class Reply < ApplicationRecord
  belongs_to :posting
  belongs_to :user
end
