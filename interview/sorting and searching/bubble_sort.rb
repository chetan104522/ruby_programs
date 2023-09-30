# array = [100, 50, 200, 70, 80, 20, 30, 10]
# count = 0
# array.map{|len| count +=1}
# for i in (0..count-1)
# 	for j in (i+1..count-1)
# 		if array[i] > array[j]
# 			temp = array[i]
# 			array[i] = array[j]
# 			array[j] = temp
# 		end
# 	end
# end
# puts array



# or 
# array = [100, 50, 200, 70, 80, 20, 30, 10]
# count = 0
# array.map{|len| count +=1}
# (0..count-1).each do |i|
# 	(i+1..count-1).each do |j|
# 		if array[i] > array[j]
# 			array[i], array[j] = array[j], array[i]
# 		end
# 	end
# end
# print array

# time 0(n2)
# space 0(1)



# array = [100, 50, 200, 70, 80, 20, 30, 10]
# count = 0
# array.map{|i| count += 1}
# (0..count-1).each do |i|
# 	(i+1..count-1).each do |j|
# 		if array[i] < array[j]
# 			array[i], array[j] = array[j], array[i]
# 		end
# 	end
# end
# print array
def find_value(array, find)
	count = 0
	array.map{|i| count += 1}
	(0..count-1).each_with_index do |k, index|
		print index if (array[k] == find)
	end
end
array = [10, 20, 30, 50, 70, 80, 100, 200]
find = 50


find_value(array, find)