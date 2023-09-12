# string = "hello"
# new_array = []
# array = string.chars
# while(array.count != 0)
# 	new_array << array.pop if array.count != 0
# end
# 	puts new_array.join


# or

string = "hello"
split_str = string.split("")
temp = []
(0..split_str.count-1).each do |i|
temp << split_str[i]
end
temp.join