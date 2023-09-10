# 1
# 22
# 333
# 4444
# 5555
user_input = gets.to_i
Array(1..user_input).each do |i|
	Array(1..i).each do |j| 
		print(i)
	end
	print("\n")
end