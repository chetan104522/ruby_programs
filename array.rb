# class Dog

# 	attr_reader :mad?

	# attr_accessor :name
	# def initialize(age)
	# 	@age = age
	# end

	# def self.initialize_puppy
	# 	dog_obj = Dog.new(12)
	# en
	# def age
	# 	"this is a age of dog #{@dog}"
	# end

	# def age=(age)
	# 	@age = age
	# end

	# def name
	# 	@name
	# end

	# def name=(name)
	# 	@name = name
	# end

	# def puppy?
	# 	if @age <= 10
	# 		puts "puppy is child #{@age}"
	# 	else
	# 		puts "puppy is yonger #{@age}"
	# 	end
 # 	end

	# def bark
	# 	puts "Au"
	# end

# end

# dog = Dog.new(2)
# # puts dog.bark
# dog = Dog::initialize_puppy
# puts dog.class
# puts dog.puppy?
# puts dog.age
# puts dog.age = 10
# puts dog.age


# dog = Dog.new
# puts dog.mad?

# dog.name = "chihuahua"
# puts dog.name

# dog.age = 67
# puts dog.age



def find_number_pairs(array, target)
	result = []
	found = false
	(0...array.length).each do |i|
		(i+1...array.length).each do |j|
			if (array[i] + array[j]) == target
				result << [array[i], array[j]]
				found = true
			end
		end
	end

	if !found
		return false
	end
	result
end


array = [6,7,8,15,28,21]
target = 13

pairs = find_number_pairs(array, target)
puts pairs.inspect