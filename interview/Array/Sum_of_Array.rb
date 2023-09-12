def sum_of_array(arr)
	sum = 0
	arr.map{|i| sum += i}
	sum
end
puts "Enter a number"
number = gets.to_i
array = Array(1..number)
print sum_of_array(array)