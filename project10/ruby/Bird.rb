# Bird.rb | Defines a Bird superclass 
#   to be extended by specific bird sub-classes.
#
# Completed by: Haim Hong
# Date: March 25 2022
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
    
    def movement
        'flews'
    end

    def print # pritns out 
        puts name + ' ' + className + " just " + movement + " and said " + call
    end
end