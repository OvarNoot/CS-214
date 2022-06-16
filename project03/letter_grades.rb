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
 end