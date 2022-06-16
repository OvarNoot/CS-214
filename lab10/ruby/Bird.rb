# Bird.rb | Defines a Bird superclass 
#   to be extended by specific bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Haim Hong
# Date: March 24 2022
####################################################

class Bird
    attr_reader :name

    def initialize(name) # initializes it
        @name = name
    end

    def call # call function for this class specific
        'Squaaaaaaawk!'
    end

    def className # use the class name for what the animal is
        self.class.to_s
    end

    def print # pritns out 
        puts name + className + " says " + call
    end
end