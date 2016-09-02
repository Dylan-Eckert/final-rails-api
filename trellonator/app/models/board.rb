class Board < ApplicationRecord
  has_many :lists

  validates :title, presence: true, length: { minimum: 3 }
  validates :body, presence: true
end
