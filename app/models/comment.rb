
class Comment < ApplicationRecord
  validates :body_text, presence: true
  validates :body_text, length: { minimum: 3 }

  belongs_to :user
  belongs_to :post
end
