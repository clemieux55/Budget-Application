require 'spec_helper'

feature 'Edit user information', %q{
	As a user
	I want to edit my information
	So it can be accurate
} do 

	let(:input_fields) { ["#user_email", '#user_password', '#user_password_confirmation', '#user_current_password'] }
	let!(:user) { FactoryGirl.create(:user) }

	scenario 'Edit profile path' do
		sign_in_as user
		visit edit_user_registration_path
		expect(page).to have_content('Edit User')
		input_fields.each do |field|
			expect(page).to have_css(field)
		end
	end

	def sign_in_as(user)
		visit root_path
		click_on 'Sign_in'
		fill_in 'user_email', with: user.email
		fill_in 'user_password', with: user.password
		click_on 'Log In'
	end
end