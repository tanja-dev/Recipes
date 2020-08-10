class Recipe < ApplicationRecord
  has_many :instructions
  has_many :ingredients
  validates :title, presence: true, length: { minimum: 4 }
  validates :description, presence: true, length: { minimum: 12 }
end
