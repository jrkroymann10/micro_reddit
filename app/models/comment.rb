class Comment < ApplicationRecord
  validates :message, presence: true, length: { maximum: 300 }
  validates :user_id, presence: true
  validates :post_id, presence: true

  belongs_to :post
  belongs_to :user
end
