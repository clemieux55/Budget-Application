require 'spec_helper'

feature "Create bankroll", %Q{
	As a user
	I can view my bankroll information
	On the index of pages
} do 

	let(:user) { FactoryGirl.create(:user) }

	scenario "Registered user can create their bankroll amount" do
		sign_in_as user
		click_on "bankroll"
		expect(page).to have_content "Amount in your bankroll:"
		expect(page).to have_content "Add account:"
		expect(page).to have_link "Complete"
	end


	def sign_in_as(user)
		visit root_path
		click_on 'Sign_in'
		fill_in 'user_email', with: user.email
		fill_in 'user_password', with: user.password
		click_on 'Log In'
	end
end