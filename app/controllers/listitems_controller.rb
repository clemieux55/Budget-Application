class ListitemsController < ApplicationController
	helper_method :current_user, :signed_in?

	def create 
		params.permit!
		@listitem = ListItem.create(listitem_params)
		@listitem.user_id = current_user.id
		if @listitem.save
			flash[:notice] = "Successfully Created"
			redirect_to root_path
		else
			render action: :new
		end
	end

	private

	def listitem_params
		params.require(:list_item).permit(:budget_item, :budget_amount, :user_id )
	end
end