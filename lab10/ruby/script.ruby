Script started on 2022-03-24 16:02:00-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="26"]
]0;hh35@gold28: ~/cs214/lab/lab10/ruby[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab10/ruby[00m$ d d cat Bird.rb birds.rb        G Duck.rb Goose.rb Owl.rb birds.rb [A]0;hh35@gold28: ~/cs214/lab/lab10/ruby[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab10/ruby[00m$ cat Bird.rb Duck.rb Goose.rb Owl.rb birds.r[Kb
# Bird.rb | Defines a Bird superclass 
#   to be extended by specific bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Haim Hong
# Date: March 24 2022
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

    def print # pritns out 
        puts name + className + " says " + call
    end
end# Duck.rb | Defines the Duck class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Haim Hong
# Date: March 24 2022
####################################################

require './Bird.rb'

class Duck < Bird
    def call # call function for this class specific
        'Quack!'
    end
end# Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Haim Hong
# Date: March 24 2022
####################################################

require './Bird.rb'

class Goose < Bird
    def call # call function for this class specific
        'Honk!'
    end
end# Owl.rb | Defines the Owl class which inherits attributes and methods
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
end# birds.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Haim Hong
# Date: March 24 2022
######################################################

# to have all these classes to this file and to be used
require './Bird.rb'
require './Duck.rb'
require './Goose.rb'
require './Owl.rb'

puts "\nWelcome to the Bird Park!\n\n"

bird0 = Bird.new "Hawkeye"
bird0.print

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

puts "\n\n"]0;hh35@gold28: ~/cs214/lab/lab10/ruby[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab10/ruby[00m$ [Kruby birdsrb  ,rb
[1mTraceback[m (most recent call last):
ruby: [1mNo such file or directory -- birds,rb ([1;4mLoadError[m[1m)[m
]0;hh35@gold28: ~/cs214/lab/lab10/ruby[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab10/ruby[00m$ ruby birds.rb

Welcome to the Bird Park!

HawkeyeBird says Squaaaaaaawk!
DonaldDuck says Quack!
MotherGoose says Honk!
WoodseyOwl says Hoo-Hoo-Hooooo!


]0;hh35@gold28: ~/cs214/lab/lab10/ruby[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab10/ruby[00m$ exit

Script done on 2022-03-24 16:02:42-04:00 [COMMAND_EXIT_CODE="0"]
