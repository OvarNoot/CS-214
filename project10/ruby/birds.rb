# birds.rb | Tests out the menagerie of bird classes.
#
# Completed by: Haim Hong
# Date: March 25 2022
######################################################

# to have all these classes to this file and to be used
require './Bird.rb'
require './Duck.rb'
require './Goose.rb'
require './Owl.rb'
require './Kiwi.rb'
require './Ostrich.rb'
require './Penguin.rb'

puts "\nWelcome to the Bird Park!\n\n"

bird0 = Bird.new "Hawkeye"
bird0.print

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

bird4 = Kiwi.new "Fruit"
bird4.print

bird5 = Ostrich.new "Orville"
bird5.print

bird6 = Penguin.new "Peter"
bird6.print

puts "\n\n"