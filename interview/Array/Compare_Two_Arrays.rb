def compare_array(arr1, arr2)
	return arr1 == arr2
end
puts "Enter a number"
number = gets.to_i
array = Array(1..number)
new_array = []
array.map{|i| new_array << i*2}
print compare_array(array, new_array)