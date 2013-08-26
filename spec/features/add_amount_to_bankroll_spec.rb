require 'spec_helper'


feature "Adding to bankroll total", %q{
	As a user
	I want to add to the bankroll spec
	To add an amount to the bankroll
} do 

let!(:user) { FactoryGirl.create(:user) }
let!(:bankroll) { Bankroll.create(user: user, total: 100) }



	scenario "User has a field to input amount to add" do 
		sign_in_as user
		expect(page).to have_content "Add"
	end

	def sign_in_as(user)
		visit root_path
		click_on 'Sign_in'
		fill_in 'user_email', with: user.email
		fill_in 'user_password', with: user.password
		click_on 'Log In'
	end
end