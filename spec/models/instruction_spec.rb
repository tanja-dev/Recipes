require 'rails_helper'

RSpec.describe Instruction do
  describe 'associations' do
    it { is_expected.to belong_to(:recipe) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:body) }
    it { is_expected.to validate_length_of(:body).is_at_least(12) }
    it { is_expected.to validate_length_of(:body).is_at_most(450) }
  end
end