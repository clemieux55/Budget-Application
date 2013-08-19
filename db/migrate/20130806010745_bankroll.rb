class Bankroll < ActiveRecord::Migration
  def up
  	create_table :bank_rolls do |t|
  		t.integer :balance
  		t.integer :transaction_amount
  		t.timestamp :transaction_time
  		t.integer :user_id
  	end
  end
end
