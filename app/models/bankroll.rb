class Bankroll < ActiveRecord::Base

	validates :total, presence: true
	belongs_to :user



end