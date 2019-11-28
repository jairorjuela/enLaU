FactoryBot.define do
  factory :task do
    name          { Faker::Company.name }
    description   { Faker::Company.catch_phrase }
    state         { 0 }
  end
end
