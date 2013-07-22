class BudgetList < ActiveRecord::Base 

	validates_presence_of :budget_item, null: false
	validates_presence_of :budget_amount, null: false
	validates_presence_of :user_id, null: false
	belongs_to :user

	end