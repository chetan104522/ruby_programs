array = [10, 20, 30, 40, 50]
count = 0
find = 50
array.map{|i| count +=1}
# (0..count-1).each_with_index do |i, index|
l = 0
h = count-1
while l <= h
	mid = (l+h)/2
	if array[mid] == find
		puts mid
		break
	elsif array[mid] < find
		l = mid +1 
	else
		h = mid -1
	end
end
