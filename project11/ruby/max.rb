# max.rb tests a Ruby linked list.
#
# Completed by: Haim Hong
# Date: March 31 2022

require './List'

list1 = List.new
list2 = List.new
list3 = List.new

list1.append(99).append(88).append(77).append(66).append(55)
list2.append(55).append(66).append(77).append(88).append(99)
list3.append(55).append(77).append(99).append(88).append(66)

list1.print 
puts
puts "Maximum of list1: #{list1.max}"

list2.print 
puts
puts "Maximum of list2: #{list2.max}"

list3.print 
puts
puts "Maximum of list3: #{list3.max}"


puts
puts "Index of 99 in list1: #{list1.search(99)}"

puts
puts "Index of 99 in list2: #{list2.search(99)}"

puts
puts "Index of 99 in list3: #{list3.search(99)}"

#testing empty list
list4 = List.new
puts
puts "Index of 99 in list4: #{list4.search(99)}"

#testing with no 99
list4.append(55).append(77).append(44).append(88).append(66)
puts
puts "Index of 99 in list4: #{list4.search(99)}"