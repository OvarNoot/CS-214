# Ostrich.rb | Defines the Ostrich class which inherits attributes and methods
#
# Completed by: Haim Hong
# Date: March 25 2022
####################################################

require './Walkingbird.rb'

class Ostrich < Walkingbird
    def call # call function for this class specific
        'Snork!'
    end
end