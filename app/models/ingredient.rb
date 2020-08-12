class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates :body, presence: true, length: { minimum: 4, maximum: 100 }
end
