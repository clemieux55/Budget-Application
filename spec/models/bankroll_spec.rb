require 'spec_helper'

describe Bankroll do 

	context "validation" do 
		it { should have_valid(:total).when(-200, 589, 16486546587) }
		it { should_not have_valid(:total).when("", nil) }
		it { should belong_to(:user) }
	end

	describe "methods" do 
		let!(:user) { FactoryGirl.create(:user) }
		let!(:bankroll) { Bankroll.create(user: user, total: 100) }
		it "should add to the total" do 
			amount_to_add = 100
			Bankroll.add_to(bankroll, amount_to_add)
			expect(bankroll.total).to eql(200)
		end
	end
end