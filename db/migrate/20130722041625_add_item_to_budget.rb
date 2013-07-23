class AddItemToBudget < ActiveRecord::Migration
  def up
  	create_table :list_items do |t|
	    t.string :budget_item
	    t.integer :budget_amount
	    t.integer :user_id
	  end
  end
end
