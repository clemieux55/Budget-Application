class Bankroll < ActiveRecord::Base

	validates :total, numericality: { only_integer: true }
	validates :user_id, uniqueness: true
	belongs_to :user
	has_many :account_activities


	def self.add_to(bankroll, amount)
		bankroll.total = bankroll.total + amount.to_i
	end
end