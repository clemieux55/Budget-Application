require "spec_helper"

describe BankrollsController do 
	let!(:user){ FactoryGirl.create(:user) }
	let(:bankroll) { Bankroll.create(total: 100, user: user) }

	it "creates the bankroll params" do 
		expect(bankroll).to be_true
	end

	it "allows the user to update their bankroll" do 
		params = { total: 250, user: user }
		expect(bankroll.update!(params)).to be_true
		expect(bankroll.total).to eql(250)
	end

end
