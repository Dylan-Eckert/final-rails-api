class List < ApplicationRecord
  belongs_to :board
  has_many :cards

  validates :title, presence: true, length: { minimum: 3 }
  validates :body, presence: true
end
