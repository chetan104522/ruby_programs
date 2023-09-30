def leap_year?(year)
	((year%4 && year%100 != 0) || year%400).eql?(0) ? "year is leap" : "year is not leap"
end

puts "Enter a year"
user = gets.to_i
print leap_year?(user)
