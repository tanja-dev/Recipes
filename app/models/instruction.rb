class Instruction < ApplicationRecord
  belongs_to :recipe

  validates :body, length: { maximum: 350 }
end
