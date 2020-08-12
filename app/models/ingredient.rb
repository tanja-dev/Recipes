class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates :body, length: { maximum: 100 }
end
