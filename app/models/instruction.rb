class Instruction < ApplicationRecord
  belongs_to :recipe

  validates :body, presence: true, length: { minimum: 12, maximum: 450 }
end
