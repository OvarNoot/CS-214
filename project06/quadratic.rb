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


