# EDCBA
# EDCBA
# EDCBA
# EDCBA
# EDCBA

user_input = gets.to_i
Array(1..user_input).each do |i|
	Array(1..user_input).each do |j|
		var = 65+user_input-j
		print "#{var.chr}"
	end
	print("\n")
end