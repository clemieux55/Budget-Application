require 'spec_helper'

feature "Adding bankroll spec", %q{ 
	As a user
	I want to update my bankroll total
	So I can keep my records current
} do 


let(:user) { FactoryGirl.create(:user) }


	scenario "Updating the bankroll" do 
		sign_in_as user
		click_on "bankroll"
		expect(page).to have_content "Add Bankroll: "
	end


	def sign_in_as(user)
		visit root_path
		click_on 'Sign_in'
		fill_in 'user_email', with: user.email
		fill_in 'user_password', with: user.password
		click_on 'Log In'
	end

end
