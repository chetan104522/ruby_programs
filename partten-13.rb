# A
# BB
# CCC
# DDDD
# EEEEE

user_input = gets.to_i
Array(1..user_input).each do |i|
	Array(1..i).each do |j|
		var = 64+i
		print(var.chr)
	end
	print("\n")
end
