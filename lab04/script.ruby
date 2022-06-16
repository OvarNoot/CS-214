Script started on 2022-02-03 22:05:32-05:00 [TERM="xterm-256color" TTY="/dev/pts/2" COLUMNS="80" LINES="24"]
]0;hh35@remotel2: ~/cs214/lab/lab04[01;32mhh35@remotel2[00m:[01;34m~/cs214/lab/lab04[00m$ cat logTable.rb[1@_table.rb[1PTable.rb
#! /usr/bin/ruby
# logTable.rb displays a table of logarithms
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Haim Hong
# Date: Feb 3
#
# Input:  The start, stop and increment values
# Precondition: The start value is less than the stop value, 
#     and the increment is greater than 0
# Output: A table of logarithms from start to stop, with increment
#     as the step value


if __FILE__ == $0
   print "Enter the start value: "
   start = gets.to_f
#### ADD CODE HERE TO GET THESE VALUES AS NUMBERS
   print "Enter the stop value: "
   stop = gets.to_f
####
   print "Enter the increment value: "
   increment = gets.to_f
####   
   
#  Replace this line with a loop to display the log table 
   while start <= stop
      puts "\nThe logarithms of #{start.to_s} is #{Math.log10(start)}" # outputs the results
      start += increment # increment start by increment
   end
end

]0;hh35@remotel2: ~/cs214/lab/lab04[01;32mhh35@remotel2[00m:[01;34m~/cs214/lab/lab04[00m$ ruby log. Table.rb
Enter the start value: 1
Enter the stop value: 10
Enter the increment value: 0.5

The logarithms of 1.0 is 0.0

The logarithms of 1.5 is 0.17609125905568124

The logarithms of 2.0 is 0.3010299956639812

The logarithms of 2.5 is 0.3979400086720376

The logarithms of 3.0 is 0.47712125471966244

The logarithms of 3.5 is 0.5440680443502757

The logarithms of 4.0 is 0.6020599913279624

The logarithms of 4.5 is 0.6532125137753437

The logarithms of 5.0 is 0.6989700043360189

The logarithms of 5.5 is 0.7403626894942439

The logarithms of 6.0 is 0.7781512503836436

The logarithms of 6.5 is 0.8129133566428556

The logarithms of 7.0 is 0.8450980400142568

The logarithms of 7.5 is 0.8750612633917001

The logarithms of 8.0 is 0.9030899869919435

The logarithms of 8.5 is 0.9294189257142927

The logarithms of 9.0 is 0.9542425094393249

The logarithms of 9.5 is 0.9777236052888477

The logarithms of 10.0 is 1.0
]0;hh35@remotel2: ~/cs214/lab/lab04[01;32mhh35@remotel2[00m:[01;34m~/cs214/lab/lab04[00m$ exit

Script done on 2022-02-03 22:05:51-05:00 [COMMAND_EXIT_CODE="0"]
