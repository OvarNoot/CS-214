# Penguin.rb | Defines the Penguin class which inherits attributes and methods
#
# Completed by: Haim Hong
# Date: March 25 2022
####################################################

require './Walkingbird.rb'

class Penguin < Walkingbird
    def call # call function for this class specific
        'Snork!'
    end
end