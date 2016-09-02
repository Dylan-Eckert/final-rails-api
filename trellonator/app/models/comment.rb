class Comment < ApplicationRecord
  belongs_to :card

  validates :title, presence: true, length: { minimum: 3 }
  validates :body, presence: true
end
