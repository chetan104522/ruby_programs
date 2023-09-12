def copy(arr)
	copy_array = []
	arr.map{|i| copy_array << i**2}
	copy_array
end
puts "Enter a number"
number = gets.to_i
array = Array(1..number)
print copy(array)