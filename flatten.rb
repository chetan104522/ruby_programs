def flatten_array(array)
	result = []
	array.each do |i|
		if i.is_a?(Array)
			result += flatten_array(i)
		else
			result << i
		end
	end
	result 
end


array = [[1,2,3], 2,[[[7,8,9]]]]
puts flatten_array(array).inspect