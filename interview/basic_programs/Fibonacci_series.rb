def fibonacci(n)
	return n if (0..1).include? n
	fibonacci(n-1) + fibonacci(n-2)
end

puts "ENter a number"
n = gets.to_i
puts fibonacci(n)

# 0,1,1,2,3,5,8,13,21