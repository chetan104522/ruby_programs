# 12345
# 1234
# 123
# 12
# 1

user_input = gets.to_i
Array(1..user_input).each do |i|
	k = user_input+1-i
	Array(1..k).each do |j|
		print(j)
	end
	print("\n")
end