require 'pry'

class BankrollsController < ApplicationController
	helper_method :current_user

	def create
		@bankroll = Bankroll.new(bankroll_params)
		@bankroll.user = current_user
		if @bankroll.save
			redirect_to root_path
		else
			render action: :create
		end
	end

	def new
		@bankroll = Bankroll.new
	end

	def edit
		@bankroll = current_user.bankroll
	end

	def update
		@bankroll = current_user.bankroll
		@bankroll.update_attribute(:total, bankroll_params[:total])
		redirect_to root_path
	end

	private
	def bankroll_params
		params.require(:bankroll).permit(:total)
	end
end