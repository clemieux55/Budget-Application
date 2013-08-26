class Bankroll < ActiveRecord::Base

	validates :total, numericality: { only_integer: true }
	validates :user_id, uniqueness: true
	belongs_to :user

end