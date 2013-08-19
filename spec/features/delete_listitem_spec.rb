require 'spec_helper'

feature "Deleting list item", %q{
	As a user
	I have a button to delete the list item
	To udpate my budgey
} do 

let!(:user) { FactoryGirl.create(:user) }
let!(:item) { FactoryGirl.create(:list_item, user: user) }

	scenario "Deleting the list item", focus: true do 
		sign_in_as user
		click_on item.budget_item
		expect(page).to have_link("Remove Item")
		click_on 'Remove Item'
		expect(page).to_not have_content item.budget_item
	end




	def sign_in_as(user)
		visit root_path
		click_on 'Sign_in'
		fill_in 'user_email', with: user.email
		fill_in 'user_password', with: user.password
		click_on 'Log In'
	end

end
