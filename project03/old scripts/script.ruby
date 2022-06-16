Script started on 2022-02-01 20:48:42-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="97" LINES="24"]
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ cat letter_grades.rb
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
    print "Enter the grade: "
    grade = gets.to_i # gets input and converts to int
    print "Your Grade is: "
    puts letterGrade(grade) # output the result you got from cases statements
 end]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$   ruby letter_gradesrb  .rb
Enter the grade: 100
Your Grade is: A
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ ruby letter_grades.rb
Enter the grade: 96
Your Grade is: A
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ ruby letter_grades.rb
Enter the grade: 88
Your Grade is: B
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ ruby letter_grades.rb
Enter the grade: 73
Your Grade is: C
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ ruby letter_grades.rb
Enter the grade: 63 6
Your Grade is: D
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ ruby letter_grades.rb
Enter the grade: 52
Your Grade is: F
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ exit

Script done on 2022-02-01 20:49:23-05:00 [COMMAND_EXIT_CODE="0"]
