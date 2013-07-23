require 'spec_helper'

feature 'Navbar', %{
	As a user
	I want to have links on the navbar
	For easy navigation
} do 

	let(:links) { ['Home', 'Sign In', 'Create Account'] }

	before :each do 
		visit root_path
	end


	scenario 'viewing the navbar links' do 
		links.each do |link|
			expect(page).to have_link(link)
		end
	end

	scenario 'link paths' do
		links.each do |link|
			click_on link
			page.status_code.should be(200)
		end
	end
end
