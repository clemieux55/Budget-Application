require 'spec_helper'

feature 'Sign out', %q{
	As a user
	I want a link to sign on
	So I can end my user session
} do 

	let(:user) { FactoryGirl.create(:user) }

	scenario 'User signs out do' do 
		sign_in_as user
		click_on 'sign_out'
		expect(current_path).to eql(root_path)
		expect(page).to have_content('Sign In')
	end

	def sign_in_as(user)
		visit root_path
		click_on 'Sign_in'
		fill_in 'user_email', with: user.email
		fill_in 'user_password', with: user.password
		click_on 'Log In'
		save_and_open_page
	end
end