require 'spec_helper'


describe AccountActivity do 

	it { should belong_to(:user) }
	it { should belong_to(:bankroll) }
	it { should have_valid(:amount).when(100, 200, -50) }
	
	describe "changing the amounts" do 
		it { should_not have_valid(:amount).when("", nil, "hello") }
	end


end