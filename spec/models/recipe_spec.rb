require 'rails_helper'

RSpec.describe Recipe do
  describe 'associations' do
    it { is_expected.to have_many(:instructions) }
    it { is_expected.to have_many(:ingredients) }
    it { is_expected.to belong_to(:user) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_length_of(:title).is_at_least(4) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_length_of(:description).is_at_least(12) }
  end
end