require 'spec_helper'

describe Bankroll do 
	it { should have_valid(:total).when(-200, 589, 16486546587) }
	it { should_not have_valid(:total).when("", nil) }
	it { should belong_to(:user) }

end