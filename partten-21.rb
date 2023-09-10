# 54321
# 5432
# 543
# 54
# 5

user_input = gets.to_i
Array(1..user_input).each do |i|
	k = user_input-i+1
	Array(1..k).each do |j|
		print(user_input-j+1)
	end
	print("\n")
end