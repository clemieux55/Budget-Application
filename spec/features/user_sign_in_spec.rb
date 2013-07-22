require 'spec_helper'

feature 'User sign in',%{
	As a user 
	I want to have the option to sign in
	So I can use the application	
} do 

	let(:user) { FactoryGirl.create(:user) }

	scenario 'The user signs in' do 
		visit root_path
		click_on 'Sign In'
		fill_in 'user_email', with: user.email
		fill_in 'user_password', with: user.password
		click_on 'Log In'
		expect(current_path).to eql(root_path)
	end
end


