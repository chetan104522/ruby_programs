def avg_of_array(arr)
	sum = 0
	count= 0
	arr.each do |i|
		count += 1
		sum += i
	end
	avg = sum/count
end

puts "Enter a number"
number = gets.to_i
array = Array(1..number)
print avg_of_array(array)