FactoryGirl.define do 
	factory :listitem do 
		sequence(:budget_item) { |n| "ite#{n}m"}
		sequence(:budget_amount) { |n| "amou#{n}nt"}
	end
end