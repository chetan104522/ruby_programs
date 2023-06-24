class Car
	$LOAD_PATH << '.'
	require 'sayhi'
	extend SayHi
	attr_accessor :name
	attr_reader :mad

	def initialize(age)
		puts "this method is auto call when create a obj #{age}"
		@age = age 
	end

	def wheels
		puts "in car model has four wheels #{@age}"
	end

	def self.age_of_car
		car = Car.new(60)		
	end
		 	
	def mad
		puts "mad methods with name #{@age}"
	end

	# def name=(name)
	# 	@name = name
	# end

	# def name
	# 	@name
	# end

end

car = Car::age_of_car
# car = Car.new(50)
puts car.wheels
car.name = "Audi"
puts car.name
puts car.mad
# puts car.say_hi	
# puts car

dog = Car::hello
puts dog

# puts car.wheels





