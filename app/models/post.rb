class Post < ApplicationRecord
  validates :title, presence: true, length: { in: 1..50 }
  validates :link, presence: true
  validates :body, length: { maximum: 300 }, allow_blank: true
  validates :user_id, presence: true

  belongs_to :user
  has_many :comments, dependent: :destroy
end
