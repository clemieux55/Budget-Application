require 'spec_helper'

feature 'Create user', %q{
	As a user
	I want to create a user account
	So i can user the application

} do 

let(:user) { FactoryGirl.build(:user) }
	scenario 'Creating a user ' do 
		prev_count = User.count
		visit root_path
		click_on 'create_account_link'
		fill_in 'user_username', with: user.username
		fill_in 'user_password', with: user.password
		fill_in 'user_password_confirmation', with: user.password
		fill_in 'user_email', with: user.email
		click_on 'Create User'
		expect(User.count).to eql(prev_count + 1)
	end
end