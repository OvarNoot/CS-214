# Duck.rb | Defines the Duck class which inherits attributes and methods
#   from the Bird superclass.
#
# Completed by: Haim Hong
# Date: March 25 2022
####################################################

require './Flyingbird.rb'

class Duck < Flyingbird
    def call # call function for this class specific
        'Quack!'
    end
end