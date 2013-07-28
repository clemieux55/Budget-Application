require 'spec_helper'

feature "Delete Listitem", %q{
	As a User
	I want to be able to delete a budget item
	To update my budget
} do 

let(:user) { FactoryGirl.create(:user) }

	scenario 'User naviagates to remove Listitem page' do 
		sign_in_as user
		click_on 'Remove'
		expect(current_path).to eql("listitems#destroy")
	end

	def sign_in_as(user)
		visit root_path
		click_on 'Sign_in'
		fill_in 'user_email', with: user.email
		fill_in 'user_password', with: user.password
		click_on 'Log In'
	end

end