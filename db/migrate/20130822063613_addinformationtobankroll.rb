class Addinformationtobankroll < ActiveRecord::Migration
  def up 
  	create_table :bankrolls do |t|
  		t.integer :total
  		t.integer :user_id
  	end
  end
end
