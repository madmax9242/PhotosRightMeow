require 'active_record'
require 'bcrypt'

# Open a database connection 
ActiveRecord::Base.establish_connection(
	:adapter => 'postgresql',
	:host => 'localhost',
	:database => 'right_meow'
)

class User < ActiveRecord::Base

	attr_accessor :password

	def authenticate(password)
		if BCrypt::Password.new(self.password_hash)
			return true
		else
			return false
		end
	end

	def hash_password
		if password.present?
			return self.password_hash = BCrypt::Password.create(password)
		end
	end

end

class Photo < ActiveRecord::Base

end