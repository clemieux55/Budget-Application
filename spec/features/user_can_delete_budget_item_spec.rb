require 'spec_helper'

feature "Delete Listitem", %q{
	As a User
	I want to be able to delete a budget item
	To update my budget
} do 

let(:user) { FactoryGirl.create(:user) }
let!(:item) {	FactoryGirl.create(:list_item, user: user) }

	scenario 'User naviagates to remove Listitem page', focus: true do 
		sign_in_as user
		expect(page).to have_content item.budget_item
	end

	def sign_in_as(user)
		visit root_path
		click_on 'Sign_in'
		fill_in 'user_email', with: user.email
		fill_in 'user_password', with: user.password
		click_on 'Log In'
	end

end