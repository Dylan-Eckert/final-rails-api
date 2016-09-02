class Card < ApplicationRecord
  belongs_to :list
  has_many :comments, :checklists
  
  validates :title, presence: true, length: { minimum: 3 }
  validates :body, presence: true
end
