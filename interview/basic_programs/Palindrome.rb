reverse = 0
puts "enter a number"
number = gets.to_i
new_number = number
while(number != 0)
	remainder = number % 10 #3
	reverse = reverse * 10 + remainder

	number /= 10
end
puts (new_number == reverse) ? "Palindrome" : "Not"