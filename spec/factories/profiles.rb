FactoryGirl.define do
  factory :profile do
    user
    person
    type    'Batman'
  end

  factory :teacher, :class => 'Profile' do
    user
    person
    type    'Teacher'
  end

  factory :parent, :class => 'Profile' do
    user
    person
    type    'Parent'
  end
end
