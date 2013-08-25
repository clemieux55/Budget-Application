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

	def index
		@bankroll = Bankroll.find(current_user)
	end

	def update
		@bankroll = Bankroll.update!(bankroll_params)

	end

	private
	def bankroll_params
		params.require(:bankroll).permit(:total)
	end
end