puts "enter a number"
number = gets.to_i
reverse = 0
while(number != 0)
	remainder = number % 10
	reverse = reverse * 10 + remainder

	number = number / 10 
end
puts reverse
