class Posting < ApplicationRecord
  belongs_to :user
  has_many :replies, dependent: :destroy
  default_scope -> { order(created_at: :desc) }

  validates :user_id, presence: true
  # TO DO: enforce content presence and/or length?
end
