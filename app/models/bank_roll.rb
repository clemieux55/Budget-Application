class BankRoll < ActiveRecord::Base

	validates_presence_of :balance, null: false
	belongs_to :user


end