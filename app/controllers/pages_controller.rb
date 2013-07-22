class PagesController < ApplicationController
	
  def index
  end

  def new
  	@budgetlist = BudgetList.new(budgetlist_params)
  end
end
