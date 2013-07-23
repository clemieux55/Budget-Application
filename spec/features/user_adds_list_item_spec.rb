require 'spec_helper'

feature 'User can add an item to the budget',%{
	As a user 
	I can add an item to the budget
	So I can modify my budget
} do 

	let(:user) { FactoryGirl.create(:user) }
	let(:item) { ListItem.new(budget_amount: 100, budget_item: 'Trash') }

	before :each do 
		sign_in_as user
		click_on 'add_list_item'
	end

	scenario 'Adding and item to the budget' do 
		expect(page).to have_content('Add Item to List')
	end

	scenario 'User creates a new list budget item' do 
		fill_in 'list_item_budget_item', with: item.budget_item
		fill_in 'list_item_budget_amount', with: item.budget_amount
		click_on 'add_to_list'
		expect(ListItem.where(item.budget_item)).to be_true
		expect(current_path).to eql()
	end

	def sign_in_as(user)
		visit root_path
		click_on 'Sign_in'
		fill_in 'user_email', with: user.email
		fill_in 'user_password', with: user.password
		click_on 'Log In'
	end
end