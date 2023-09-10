# class Greeting
# 	def hello
# 	end
# end


# class Dog
# 	def initialize(name)
# 		@name = name
# 	end
# end

# cooper = Dog.new(name: 'chetan')

# cooper.define_singleton_method(:leg_waiver) do 
# 	puts "coop is leg_waiver"
# end

# def cooper.thump
# 	puts "cooper thum"
# end

# cooper.leg_waiver
# cooper.thump


class Greeting
	def Greeting.hello
	end
end

puts Greeting.instance_methods.include?(:hello)
puts Greeting.singleton_methods.include?(:hello)


obj = Greeting.new
obj.define_singleton_method(:leg_waiver) do 
	puts "new method"
end

def obj.thump
	puts "nice"
end

obj.leg_waiver
obj.thump

































