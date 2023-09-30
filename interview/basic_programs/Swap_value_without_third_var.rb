# approach1
# def swap(ram, shyam)
# 	ram, shyam = shyam, ram
# end

# puts "Enter a number to be swap"
# ram = gets.to_i
# shyam = gets.to_i
# print swap(ram, shyam)


# or

# approach2

# def swap(ram, shyam) #20 30
# 	ram = ram+shyam  #50
# 	shyam = ram-shyam #20
# 	ram = ram-shyam #30
# 	return ram, shyam
# end


# puts "Enter a number to be swap"
# ram = gets.to_i
# shyam = gets.to_i
# print swap(ram, shyam)




# or


# approach3

def swap(ram, shyam) #20 30
	ram = ram^shyam  #50
	shyam = ram^shyam #20
	ram = ram^shyam #30
	return ram, shyam
end


puts "Enter a number to be swap"
ram = gets.to_i
shyam = gets.to_i
print swap(ram, shyam)
