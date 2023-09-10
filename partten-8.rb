# EEEEE
# DDDDD
# CCCCC
# BBBBB
# AAAAA

user_input = gets.to_i
Array(1..user_input).each do |i|
	var = 65+user_input-i
	puts "#{var.chr}"*user_input
end