class User < ApplicationRecord
  validates :username, presence: { message: "must be given."}
  validates :username, length: { in: 4..12 }
  validates :username, uniqueness: { message: "%{model} is already taken."}

  has_many :posts
  has_many :comments
end
