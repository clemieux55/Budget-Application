require 'spec_helper'

describe 'pages/index' do 

	it 'has a create user link' do
		visit root_path
		expect(page).to have_link 'create_account_link'
	end
end
