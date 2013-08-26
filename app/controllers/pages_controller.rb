class PagesController < ApplicationController
	helper_method :current_user, :signed_in?

  def index
    if signed_in?
	    @listitem = ListItem.where(user_id: current_user.id)
	    @total = total
      @bankroll = Bankroll.where(user_id: current_user.id)
    end
  end

  def index_listitem_params
  	params.permit(:user_id)
  end


  private 

  def total
  	@listitem.sum('budget_amount')
  end

  private
  def bankroll_amount
    bankroll = Bankroll.find(current_user)
end
end
