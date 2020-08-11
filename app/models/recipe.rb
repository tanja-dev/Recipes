class Recipe < ApplicationRecord
  has_many :instructions, dependent: :destroy
  has_many :ingredients, dependent: :destroy

  accepts_nested_attributes_for :instructions, reject_if: lambda {|attributes| attributes['body'].blank?}
  accepts_nested_attributes_for :ingredients, reject_if: lambda {|attributes| attributes['body'].blank?}

  validates :title, presence: true, length: { minimum: 4 }
  validates :description, presence: true, length: { minimum: 12 }
end
