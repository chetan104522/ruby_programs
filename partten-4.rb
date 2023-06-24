# AAAAA
# BBBBB
# CCCCC
# DDDDD
# EEEEE

array = gets.to_i
Array(65..65+array).each do |j|
	puts "#{j.chr}"*array
end