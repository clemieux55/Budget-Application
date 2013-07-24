FactoryGirl.define do 
	factory :list_item do 
		sequence(:budget_item) { |n| "ite#{n}m"}
		sequence(:budget_amount) { |n| "amou#{n}nt"}
		association :user
	end
end