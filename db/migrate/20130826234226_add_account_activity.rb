class AddAccountActivity < ActiveRecord::Migration
  def up
  	create_table :account_activities do |t|
  		t.integer :user_id
  		t.integer :bankroll_id
  		t.integer :amount
  		t.datetime
  	end
  end
end
