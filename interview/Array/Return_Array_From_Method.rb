# 3 Return Array from a method muliple of two
def return_array(arr)
	multi = []
	arr.map{|i| multi << i*2}
	multi
end


puts "Enter a array values"
array = gets.to_i
array_number = Array(1..array)
print return_array(array_number)