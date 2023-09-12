# 1 Find Length of Array in Ruby
def length(arr)
	len = 0
	arr.map{|value| len +=1}
	print "Length of the array #{len}"
end

puts "Enter a array values"
array = gets.to_i
puts length(Array(1..array))