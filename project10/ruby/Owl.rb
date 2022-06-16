# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#
# Completed by: Haim Hong
# Date: March 25 2022
####################################################

require './Flyingbird.rb'

class Owl < Flyingbird
    def call # call function for this class specific
        'Hoo-Hoo-Hooooo!'
    end
end