FactoryGirl.define do 
	factory :user do 
		sequence(:username) { |n| "user#{n}name"}
		sequence(:password) { |n| "pass#{n}word"}
		password_confirmation :password
		sequence(:email) { |n| "example#{n}@email.com"}
	end
end

