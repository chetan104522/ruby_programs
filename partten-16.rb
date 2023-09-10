# 11111
# 2222
# 333
# 44
# 5

user_input = gets.to_i
Array(1..user_input).each do |i|
	k = user_input+1-i
	Array(1..k).each do |j|
		print(i)
	end
	print("\n")
end