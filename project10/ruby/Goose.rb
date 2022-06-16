# Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the Bird superclass.
#
# Completed by: Haim Hong
# Date: March 25 2022
####################################################

require './Flyingbird.rb'

class Goose < Flyingbird
    def call # call function for this class specific
        'Honk!'
    end
end