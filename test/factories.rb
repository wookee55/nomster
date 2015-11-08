FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "abc#{n}@efg.com"
    end

    password 'nomster1234'
  end

  factory :place do
    name "ABCD"
    address "Somewhere"
    description "Something."
    association :user
  end
end