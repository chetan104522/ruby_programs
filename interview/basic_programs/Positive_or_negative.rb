def postive?(number)

	number.eql?(0) ?  "number is not postive or not nagative" : number > 0 ? "number is postive" : "number is nagative"
	# (number > 0) ?  "number is postive" : "number is nagative"
end

puts "Enter a number to check postive or negative"
user = gets.to_i
print postive?(user)
