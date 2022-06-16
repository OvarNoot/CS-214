Script started on 2022-03-25 13:38:02-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="98" LINES="24"]
]0;hh35@gold28: ~/cs214/project/project10/ruby[01;32mhh35@gold28[00m:[01;34m~/cs214/project/project10/ruby[00m$ cat Bid.  rd.rb bir   DUck.    uck.rb FLy   d Goose.rb Kiwi.rb Ostrich.rb Owl.rb  Penguin.rb Flyingbirdr .rb Walkingbird.rb birds.rb
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
end# Duck.rb | Defines the Duck class which inherits attributes and methods
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
end# Goose.rb | Defines the Goose class which inherits attributes and methods
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
end# Kiwi.rb | Defines the Kiwi class which inherits attributes and methods
#
# Completed by: Haim Hong
# Date: March 25 2022
####################################################

require './Walkingbird.rb'

class Kiwi < Walkingbird
    def call # call function for this class specific
        'Phrrrrrrrr!'
    end
end# Ostrich.rb | Defines the Ostrich class which inherits attributes and methods
#
# Completed by: Haim Hong
# Date: March 25 2022
####################################################

require './Walkingbird.rb'

class Ostrich < Walkingbird
    def call # call function for this class specific
        'Snork!'
    end
end# Owl.rb | Defines the Owl class which inherits attributes and methods
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
end# Penguin.rb | Defines the Penguin class which inherits attributes and methods
#
# Completed by: Haim Hong
# Date: March 25 2022
####################################################

require './Walkingbird.rb'

class Penguin < Walkingbird
    def call # call function for this class specific
        'Snork!'
    end
end# Flyingbird.rb | Defines the flyingbird class which inherits attributes and methods
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
end# Walkingbird.rb | Defines the Walkingbird class which inherits attributes and methods
#   from the Bird superclass.
#
# Completed by: Haim Hong
# Date: March 25 2022
####################################################

require './Bird.rb'

class Walkingbird < Bird
    def movement  # movement function for this class specific
        'walked'
    end
end# birds.rb | Tests out the menagerie of bird classes.
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

puts "\n\n"]0;hh35@gold28: ~/cs214/project/project10/ruby[01;32mhh35@gold28[00m:[01;34m~/cs214/project/project10/ruby[00m$ [Kruby birds.rb

Welcome to the Bird Park!

Hawkeye Bird just flews and said Squaaaaaaawk!
Donald Duck just flew and said Quack!
Mother Goose just flew and said Honk!
Woodsey Owl just flew and said Hoo-Hoo-Hooooo!
Fruit Kiwi just walked and said Phrrrrrrrr!
Orville Ostrich just walked and said Snork!
Peter Penguin just walked and said Snork!


]0;hh35@gold28: ~/cs214/project/project10/ruby[01;32mhh35@gold28[00m:[01;34m~/cs214/project/project10/ruby[00m$ exit

Script done on 2022-03-25 13:38:52-04:00 [COMMAND_EXIT_CODE="0"]
