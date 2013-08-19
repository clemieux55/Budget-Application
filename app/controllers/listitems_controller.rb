class ListitemsController < ApplicationController
	helper_method :current_user, :signed_in?

	def create 
		@listitem = ListItem.create(listitem_params)
		@listitem.user_id = current_user.id
		if @listitem.save
			redirect_to root_path
		else
			render action: :new
		end
	end

	def show
		@listitem = ListItem.find(params[:id])
	end

	def index 
		@listitems = ListItem.all

	end

	def update
		@listitem = ListItem.find(params[:id])
		if @listitem.update_attributes(params[:list_item])
			redirect_to root_path
		else
			render action: :new
		end
	end

	def destroy
		@listitem = ListItem.find(params[:id])
		binding.pry
		redirect_to :action => 'show'
	end

	private

	def listitem_params
		params.require(:list_item).permit(:budget_item, :budget_amount, :user_id )
	end

end