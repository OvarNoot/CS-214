# Flyingbird.rb | Defines the flyingbird class which inherits attributes and methods
#   from the Bird superclass.
#
# Completed by: Haim Hong
# Date: March 25 2022
####################################################

require './Bird.rb'

class Flyingbird < Bird
    def movement # movement function for this class specific
        'flew'
    end
end