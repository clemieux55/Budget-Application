class AccountActivity < ActiveRecord::Base


	validates :amount, numericality: { only_integer: true }
	belongs_to :user
	belongs_to :bankroll
	validates :amount, null: false

end