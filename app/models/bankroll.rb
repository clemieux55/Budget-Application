class Bankroll < ActiveRecord::Base

	validates :total, presence: true
	validates :user, presence: true
	belongs_to :user



end