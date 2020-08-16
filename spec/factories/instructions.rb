FactoryBot.define do
  factory :instruction do
    user
    recipe
    body { 'Some instruction!!' }
  end
end