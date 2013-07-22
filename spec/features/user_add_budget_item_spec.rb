require 'spec_helper'

feature 'User can add an item to the budget',%{
	As a user 
	I can add an item to the budget
	So I can modify my budget
} do 

	let(:user) { FactoryGirl.create(:user) }

	scenario 'Adding and item to the budget' do 
		sign_in_as user
		expect(page).to have_content('New Budget Item')
		expect(page).to have_link('new_budget_item')
	end

	def sign_in_as(user)
		visit root_path
		click_on 'Sign_in'
		fill_in 'user_email', with: user.email
		fill_in 'user_password', with: user.password
		click_on 'Log In'
	end
end