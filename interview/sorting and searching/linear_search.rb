# array = [10, 20, 30, 40, 50]
# count = 0
# array.map{|i| count +=1}
# find = 30
# (0..count-1).each_with_index do |i, index|
# 	if array[i] == find
# 		puts index
# 	end
# end


def find_value(array, find)
	count = 0
	array.map{|i| count +=1}
	(0..count-1).each_with_index do |i, index|
		if array[i] == find
			puts index
		end
	end
end

array = [10, 20, 30, 40, 50]
find = 50
find_value(array, find)