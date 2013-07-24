require 'spec_helper'

feature 'Viewing the listitems on the homepage', %q{
	As a user
	I can sign in
	And view my listitems on the homepage
} do 

	let!(:user) { FactoryGirl.create(:user) }
	let!(:item) { FactoryGirl.create(:list_item, user: user) }

	scenario 'homepage' do 
		sign_in_as user
		save_and_open_page
		expect(page).to have_content('Expense')
		expect(page).to have_content('Amount')
		expect(page).to have_content(item.budget_item)
		expect(page).to have_content(item.budget_amount)
	end

	def sign_in_as(user)
		visit root_path
		click_on 'Sign_in'
		fill_in 'user_email', with: user.email
		fill_in 'user_password', with: user.password
		click_on 'Log In'
	end

end