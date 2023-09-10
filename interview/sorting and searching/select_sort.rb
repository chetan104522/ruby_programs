# array = [64, 25, 12, 22, 11]
# count = 0
# array.map{|k| count+=1}

# (0..count-1).each do |i|
# 	min = i
# 	(i+1..count-1).each do |j|
# 		if array[j] < array[min]
# 			min = j
# 		end
# 		array[i], array[min] = array[min], array[i]
# 	end
# end
# array.each {|ele| puts ele}


array = [64, 25, 12, 22, 11]

(0..array.length - 1).each do |i|
  min = i
  (i+1..array.length - 1).each do |j|
    min = j if array[j] < array[min]
  end
  array[i], array[min] = array[min], array[i]
end

array.each { |element| puts element }
