# *
# **
# ***
# ****
# *****

user_input = gets.to_i
Array(1..user_input).each do |i|
	Array(1..i).each do |j|
		print("*")
	end
	print("\n")
end