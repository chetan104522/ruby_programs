# class Employee
# 	attr_reader :email
# 	attr_writer :email
# 	def initialize(email)
# 		@email = email
# 	end 
# end

# emp = Employee.new("chetan@gmail.com")
# emp.email
# emp.email = 'hi'
# emp.email


class Employee
	attr_accessor :email
	def initialize(email)
		@email = email
	end 
end

emp = Employee.new("chetan@gmail.com")
emp.email
emp.email = 'hi'
emp.email
