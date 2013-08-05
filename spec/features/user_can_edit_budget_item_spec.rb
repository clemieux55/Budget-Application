require 'spec_helper'

feature "Delete Listitem", %q{
	As a User
	I want to be able to delete a budget item
	To update my budget
} do 

let(:user) { FactoryGirl.create(:user) }
let(:item) { FactoryGirl.create(:list_item, user: user) }

before :each do 
	sign_in_as user
	item
end

	scenario 'User naviagates to remove Listitem page' do 
		visit root_path
		expect(page).to have_content item.budget_item
	end

	scenario 'Redirects to the edit page' do 
		visit listitem_path(item)
		fill_in 'list_item_budget_item', with: 'Apple'
		fill_in 'list_item_budget_amount', with: '150'
		click_on 'Update Item'
		expect(page).to have_content("Apple")
		expect(page).to have_content('150')
	end

	def sign_in_as(user)
		visit root_path
		click_on 'Sign_in'
		fill_in 'user_email', with: user.email
		fill_in 'user_password', with: user.password
		click_on 'Log In'
	end

end