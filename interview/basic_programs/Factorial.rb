# 5! = 120
# 1*2*3*4*5
def factorial(number)
	arr = 1
	(0..number-1).map{|i| arr *= number-i}
	return arr
end
puts "Enter a number to for factorials"
user = gets.to_i
print factorial(user)



# or 

def factorial(number)
	fact = 1 
	number.eql?(0) ? (fact = 0) : number.eql?(1) ? (fact = 1) : (0..number-1).map{|k| fact *= number-k }
	return fact
end

puts "Enter a number to for factorials"
user = gets.to_i
print factorial(user)



def factorial(number)
	fact = 1 
	(0..number-1).map{|k| fact *= number-k } if number > 1
	return fact
end

puts "Enter a number to for factorials"
user = gets.to_i
print factorial(user)