class BudgetLists < ApplicationController

	def new 
		@budgetlist = BudgetList.new
	end


end