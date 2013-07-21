class User < ActiveRecord::Base
		attr_reader :username
		
	validates_presence_of :username, null: false
	validates_presence_of :email, null: false
	validates_presence_of :password, null: false
	validates_presence_of :password_confirmation, null: false
end
