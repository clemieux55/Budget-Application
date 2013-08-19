require 'spec_helper'

feature 'Create user', %q{
	As a user
	I want to create a user account
	So i can use the application

} do 

let(:user) { FactoryGirl.build(:user) }
	scenario 'Creating a user' do 
		prev_count = User.count
		visit root_path
		click_on 'create_account_link'
		fill_in 'user_email', with: user.email
		fill_in 'user_password', with: user.password
		fill_in 'user_password_confirmation', with: user.password
		click_button 'Create'
		expect(User.count).to eql(prev_count + 1)
		expect(current_path).to eql(root_path)
	end
end
