
class Post < ApplicationRecord
  validates :body_text, presence: true
  validates :body_text, length: { minimum: 3 }

  belongs_to :user
  has_many :comments
end
