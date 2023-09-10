# 55555
# 4444
# 333
# 22
# 1

user_input = gets.to_i
Array(1..user_input).each do |i|
	k = user_input-i+1
	Array(1..k).each do |j|
		print(user_input-i+1)
	end
	print("\n")
end