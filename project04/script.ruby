Script started on 2022-02-04 15:09:38-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="156" LINES="24"]
]0;hh35@gold17: ~/cs214/project/project04[01;32mhh35@gold17[00m:[01;34m~/cs214/project/project04[00m$ cat script.ruby             n_factorial.rb
# n_factorial computes the factorial of n
#
# Haim Hong
# Date Feb 4 2022
#
def factorial (n)
    answer = 1.0
    for a in 2..n do # loop until it reaches n
        answer *= a # multiply answer by a that increments by 1 each loop
    end
    return answer.to_s
end
if __FILE__ == $0
    print "Enter the number to computer the factorial of it: " # ouputs the string
    n = gets.to_f # gets input for n for n!
    puts "\nThe logarithms of #{n.to_s} is #{factorial(n)}" # outputs the result of it

end]0;hh35@gold17: ~/cs214/project/project04[01;32mhh35@gold17[00m:[01;34m~/cs214/project/project04[00m$ ru  cat n_factorial.rb[1@ruby n_factorial.rb
Enter the number to computer the factorial of it: 3

The logarithms of 3.0 is 6.0
]0;hh35@gold17: ~/cs214/project/project04[01;32mhh35@gold17[00m:[01;34m~/cs214/project/project04[00m$ ruby n_factorial.rb
Enter the number to computer the factorial of it: 5

The logarithms of 5.0 is 120.0
]0;hh35@gold17: ~/cs214/project/project04[01;32mhh35@gold17[00m:[01;34m~/cs214/project/project04[00m$ ruby n_factorial.rb
Enter the number to computer the factorial of it: 8

The logarithms of 8.0 is 40320.0
]0;hh35@gold17: ~/cs214/project/project04[01;32mhh35@gold17[00m:[01;34m~/cs214/project/project04[00m$ ruby n_factorial.rb
Enter the number to computer the factorial of it: 10

The logarithms of 10.0 is 3628800.0
]0;hh35@gold17: ~/cs214/project/project04[01;32mhh35@gold17[00m:[01;34m~/cs214/project/project04[00m$ exit

Script done on 2022-02-04 15:10:02-05:00 [COMMAND_EXIT_CODE="0"]
