require 'spec_helper'

describe BankRoll do 

	it { should validate_presence_of(:balance) }
	it { should belong_to(:user) }


end