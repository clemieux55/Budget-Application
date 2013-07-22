require 'spec_helper'

describe 'pages/index' do 
	let(:user) { FactoryGirl.create(:user) }

	it 'has a create user link' do
		visit root_path
		expect(page).to have_link 'create_account_link'
	end

	it 'displays the user name is user is logged in' do 
		visit root_path
		sign_in_as user
		expect(page).to have_content "Signed In As: #{user.email}"
	end

	it 'has a sign in link for the user' do 
		visit root_path
		expect(page).to have_link 'Sign In'
	end

	def sign_in_as(user)
		click_on 'Sign_in'
		fill_in 'user_email', with: user.email
		fill_in 'user_password', with: user.password
		click_on 'Log In'
	end

end
