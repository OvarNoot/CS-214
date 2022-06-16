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

end