require "spec_helper"

describe BankrollsController do 
	let(:user) { FactoryGirl.create(:user) }

	it "creates the bankroll params" do 
		params = {total: 100, user: user }
		expect(Bankroll.create(params)).to be_true
	end
end
