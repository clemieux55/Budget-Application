require 'spec_helper'

describe ListItem do 

	it { should belong_to(:user) }
	it { should validate_presence_of(:budget_item) }
	it { should validate_presence_of(:budget_amount) }

end