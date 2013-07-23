class ListitemsController < ActionController::Base
	helper_method :current_user

	def new
		@listitem = ListItem.new
	end

	def create 
		params.permit!
		@listitem = ListItem.new(listitem_params)
		@listitem.user_id = current_user.id
		binding.pry
		if @listitem.save
			flash[:notice] = "Successfully Created"
			redirect_to root_path
		else
			render action: :new
		end
	end

	private

	def listitem_params
		params.require(:list_item).permit(:budget_item, :budget_amount, user: [:user_id])
	end
end