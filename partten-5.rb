# ABCDE
# ABCDE
# ABCDE
# ABCDE
# ABCDE


# Array(65...91).pack('c*')

array = gets.to_i
Array(65..65+array).each do |i| 
	Array(65..65+array).each do |j|
		print(j.chr)
	end
	print("\n")
end
