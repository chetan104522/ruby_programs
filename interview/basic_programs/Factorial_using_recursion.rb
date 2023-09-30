# or using recursion
def factorial(number)
	return number.eql?(0) ? 1 : (number * factorial(number-1))
end


puts "Enter a number to for factorials"
user = gets.to_i
print factorial(user)
