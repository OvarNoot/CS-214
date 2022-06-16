# Name.rb is a class with its operations
#
# Completed by: Haim Hong
# Date: March 17 2022
###################s################################
module Names
    class Name
        def initialize(first, middle, last)
        @first, @middle, @last = first, middle, last
        end
    
        attr_reader :first, :middle, :last
    
        def fullName
        @first + " " + @middle + " " + @last
        end
    
        def print
        puts fullName
        fullName
        end
    end
end