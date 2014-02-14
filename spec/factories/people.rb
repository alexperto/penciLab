FactoryGirl.define do
  factory :person do
    name            { Faker::Name.first_name }
    first_last_name { Faker::Name.last_name }
    gender          'male'
    date_of_birth   { 20.years.ago }
  end
end
