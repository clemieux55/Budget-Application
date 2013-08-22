class BankrollsController < ApplicationController

	def create
		@bankroll = Bankroll.create(bankroll_params)
	end

	def new
		@bankroll = Bankroll.new
	end

	private
	def bankroll_params
		params.required(:bankroll).permit(:total)
	end
end