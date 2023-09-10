# A
# AB
# ABC
# ABCD
# ABCDE

user_input = gets.to_i
Array(1..user_input).each do |i|
	Array(1..i).each do |j|
		var = 64+j
		print(var.chr)
	end
	print("\n")
end