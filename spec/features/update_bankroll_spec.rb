require 'spec_helper'

feature "Adding bankroll spec", %q{ 
	As a user
	I want to update my bankroll total
	So I can keep my records current
} do 


let!(:user) { FactoryGirl.create(:user) }
	before :each do 
		Bankroll.create(total: 10, user_id: user.id)
		sign_in_as user
		click_on "bankroll"
	end 

	scenario "Updating the bankroll" do 
		expect(page).to have_content "Update Bankroll: "
	end

	scenario "Submitting the update request" do 
		fill_in "bankroll_total", with: "250"
		click_on "update"
		expect(current_path).to eql root_path
		expect(page).to have_content "250"
	end


	def sign_in_as(user)
		visit root_path
		click_on 'Sign_in'
		fill_in 'user_email', with: user.email
		fill_in 'user_password', with: user.password
		click_on 'Log In'
	end

end
