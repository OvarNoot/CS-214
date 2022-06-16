# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Haim Hong
# Date: March 24 2022
####################################################

require './Bird.rb'

class Owl < Bird
    def call # call function for this class specific
        'Hoo-Hoo-Hooooo!'
    end
end