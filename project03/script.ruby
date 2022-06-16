Script started on 2022-02-02 20:21:59-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="101" LINES="24"]
]0;hh35@gold18: ~/cs214/project/project03[01;32mhh35@gold18[00m:[01;34m~/cs214/project/project03[00m$ cat letter_grades.rb
# gets grade and converts into grade
# Haim Hong
# Jan 21
################

def letterGrade(y) # goes through each cases after dividing it
    y = y / 10
    case y
    when 9..10 # when its 9 to 10 then A and changes for each cases
        "A"
    when 8
        "B"
    when 7
        "C"
    when 6
        "D"
    else
        "F"
    end
end
if __FILE__ == $0
    i = 100
    while i >= 50 # looping until goes below 50

        print "Testing grade: " + i.to_s + "\n" # printing out grade testing for by changining int to string
        print "Your Grade is: "
        puts letterGrade(i) # output the result you got from cases statements
        i -= 3 # deducting by 3 points 
    end
 end]0;hh35@gold18: ~/cs214/project/project03[01;32mhh35@gold18[00m:[01;34m~/cs214/project/project03[00m$ ruby letter_grades.rb
Testing grade: 100
Your Grade is: A
Testing grade: 97
Your Grade is: A
Testing grade: 94
Your Grade is: A
Testing grade: 91
Your Grade is: A
Testing grade: 88
Your Grade is: B
Testing grade: 85
Your Grade is: B
Testing grade: 82
Your Grade is: B
Testing grade: 79
Your Grade is: C
Testing grade: 76
Your Grade is: C
Testing grade: 73
Your Grade is: C
Testing grade: 70
Your Grade is: C
Testing grade: 67
Your Grade is: D
Testing grade: 64
Your Grade is: D
Testing grade: 61
Your Grade is: D
Testing grade: 58
Your Grade is: F
Testing grade: 55
Your Grade is: F
Testing grade: 52
Your Grade is: F
]0;hh35@gold18: ~/cs214/project/project03[01;32mhh35@gold18[00m:[01;34m~/cs214/project/project03[00m$ exit

Script done on 2022-02-02 20:23:00-05:00 [COMMAND_EXIT_CODE="0"]
