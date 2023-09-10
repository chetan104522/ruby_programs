# 1
# 12
# 123
# 1234
# 12345
user_input = gets.to_i
Array(1..user_input).each do |i|
	Array(1..i).each do |j|
		print(j)
	end
	print("\n")
end