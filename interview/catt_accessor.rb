# require 'active_support/all'
# class User < ApplicationRecord
# 	extend ActiveSupport::Concern

# 	cattr_reader :my_class_variable

# 	def self.my_class_variable
# 		puts "hello gyus"
# 	end


# 	def initilize(value)
# 		self.class.my_class_variable = 'heloo'
# 	end
# end


# puts User.my_class_variable
# # User.my_class_variable = 'hello'

# require 'active_support/all'

# class User < ApplicationRecord
# 	extend ActiveSupport::Concern

# 	# cattr_reader :my_class_variable

# 	def self.my_class_variable(value)
# 		@value = value
# 		puts @value
# 	end

# 	def self.show
# 		puts @value
# 	end


# 	# def initilize(value)
# 		# self.class.my_class_variable = 'heloo'
# 	# end
# end


# User.my_class_variable('hello')
# puts User.show


# equire 'active_support/all'

# class User < ApplicationRecord
# 	extend ActiveSupport::Concern

# 	cattr_accessor :my_class_variable

# 	def initilize(value)
# 		self.class.my_class_variable = value
# 	end
# end


# User.my_class_variable = 'hello'
# puts User.my_class_variable

# instance = User.new("hi")
# puts instance.class.my_class_variable

# 1 way
# class User < ApplicationRecord
# 	# attr_accessor :email

# 	def set_email=(email)
# 		@email = email
# 	end

# 	def get_email
# 		puts @email
# 	end
# end
# obj = User.new
# obj.set_email = "chetan@gmail.com"
# puts obj.get_email


# 2 way
# class User < ApplicationRecord
# 	attr_accessor :email
	
# 	def initialize(email)
# 		@email = email
# 	end
# end

# obj = User.new("shiva@gmail.com")
# puts obj.email
# obj.email = 'gaya@gmail.com'
# puts obj.email


# 3 way 
require 'active_support/all'
class User < ApplicationRecord
	extend ActiveSupport::Concern

	def initialize(name)
		self.name = name
	end

	# cattr_accessor :name

end

obj = User.new("ram@gmail.com")
obj.name

# User.name = 'purshottam@gmail.com'
# puts User.name

# obj = User.new
# obj.class.name
