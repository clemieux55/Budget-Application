class PagesController < ApplicationController
	helper_method :current_user


  def index
  	if current_user
			@listitem = ListItem.where(user_id: current_user.id)
			@total = total
  	end
  end

  def index_listitem_params
  	params.permit(:user_id)
  end


  private 

  def total
  	@listitem.sum('budget_amount')
  end
end
