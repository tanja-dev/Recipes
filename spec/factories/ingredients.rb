FactoryBot.define do
  factory :ingredient do
    user
    recipe
    body { 'Some ingredient!!' }
  end
end