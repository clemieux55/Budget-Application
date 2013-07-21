class UsersController < ApplicationController

	def new
		@user = User.new(params[:user])
	end

	def create
		params.permit!
		binding.pry
		@user = User.new(params[:user])
		if @user.save
			flash[:notice] = "Welcome #{@user}"
		else
			render 'new'
		end

	end


end