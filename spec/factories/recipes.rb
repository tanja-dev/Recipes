FactoryBot.define do
  factory :recipe do
    user
    title { 'New recipe' }
  end
end