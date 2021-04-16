require 'faker'

FactoryGirl.define do
  factory :person do
    name { Faker::Name.first_name }
    age { Faker::Number.between(0, 100) }
  end
end
