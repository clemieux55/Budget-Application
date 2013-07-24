# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	sequence(:email) { |n| "exa#{n}mpl#{n}@email.com"}
  	sequence(:password) { |n| "password"}
  end
end
