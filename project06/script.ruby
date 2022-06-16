Script started on 2022-02-17 17:12:04-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="80" LINES="24"]
]0;hh35@gold18: ~/cs214/project/project06[01;32mhh35@gold18[00m:[01;34m~/cs214/project/project06[00m$ cat script.       quadratic.rb
#
# Gets three inptus for a, b, and c
# Computs the quadratic equation and outputs them if they are non zero
#
# Haim Hong
# Feb 17
###################

def quadratic a, b, c
    if a != 0 
        args = (b**2) - 4 * c * a # computes the args for it to be used in roots
        if args >= 0
            roots = [(-b + Math.sqrt(args))/(2 * a), (-b +- Math.sqrt(args))/(2 * a)] # put both into one array 
        else
            puts "quadraticRoots(): b^2 - 4ac is negative!" # if its negative output this
            roots = 0; # clear array
        end
    else
        puts "*** QuadraticRoots(): a is zero!" # if its zero
        roots = 0; # clear array
    end

end

if __FILE__ == $0
    print "Enter the value of a:" # output strings 
    the_a = gets.to_f # gets the input
    print "Enter the value of b:"
    the_b = gets.to_f
    print "Enter the value of c:"
    the_c = gets.to_f

    the_roots = quadratic(the_a, the_b, the_c)
    if (the_roots[0] != 0) # check if its not 0
        puts "The root1 is: " << the_roots[0].to_s # output them by converting to string
        puts "The root2 is: " << the_roots[1].to_s # output them by converting to string
    end
end


]0;hh35@gold18: ~/cs214/project/project06[01;32mhh35@gold18[00m:[01;34m~/cs214/project/project06[00m$ ruby quadratic.rb
Enter the value of a:1
Enter the value of b:4
Enter the value of c:3
The root1 is: -1.0
The root2 is: -3.0
]0;hh35@gold18: ~/cs214/project/project06[01;32mhh35@gold18[00m:[01;34m~/cs214/project/project06[00m$ ruby quadratic.rb
Enter the value of a:1
Enter the value of b:1
Enter the value of c:1
quadraticRoots(): b^2 - 4ac is negative!
]0;hh35@gold18: ~/cs214/project/project06[01;32mhh35@gold18[00m:[01;34m~/cs214/project/project06[00m$ ruby quadratic.rb
Enter the value of a:0
Enter the value of b:0
Enter the value of c:0
*** QuadraticRoots(): a is zero!
]0;hh35@gold18: ~/cs214/project/project06[01;32mhh35@gold18[00m:[01;34m~/cs214/project/project06[00m$ exit

Script done on 2022-02-17 17:12:36-05:00 [COMMAND_EXIT_CODE="0"]
