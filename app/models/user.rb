class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { maximum: 12 }
  validates :password, presence: true, length: { in: 8..20 }
  validates :email, presence: true, uniqueness: true

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
