class User < ApplicationRecord
	self.primary_key = 'email'
	validates :name, presence: true
end

# User.primary_key  ====>>> email