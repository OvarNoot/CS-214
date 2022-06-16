Script started on 2022-03-24 16:03:08-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="26"]
]0;hh35@gold28: ~/cs214/lab/lab10/java[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab10/java[00m$ cat Bird.java Duck.java Good se.java Owl.java  Birds.java
/* Bird.java provides a Bird class.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Haim Hong
 * Date: March 24 2022
 ******************************************************/

import java.io.*;

public class Bird
{

 /* default constructor
  * PostCond: myName == "".
  */
  public Bird(){
    myName = "";
  }

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Bird(String name){
    myName = name;
  }

 /* Name accessor
  * Return: myName.
  */
  public String getName(){
    return myName;
  }

 /* A Bird's Call
  * Return: a default bird-call ("Squawk!").
  */
  public String call()
  {
    return "Squaaaaaaaaaawk!";
  }

 /* Output a Bird 
  * Output: Everything known about myself
  *          to the standard output stream.
  */
  public void print()
  {
    System.out.println(getName() + ' ' + getClass().getName() + " says " + call());
  }


  private String myName;
}

/* Duck.java provides a Duck subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Haim Hong
 * Date: Marh 24 2022
 ******************************************************/

public class Duck extends Bird{
 /* default constructor
  * PostCond: myName == "".
  */
    public Duck(){
      super(); // super references to the super class
    }
 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
    public Duck(String name){
      super(name); // referencing to the super class
    }


 /* A Duck's Call
  * Return: a duck-call ("Quack!").
  */
  public String call(){
    return "Quack!";
  }
}

/* Goose.java provides a Goose subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Haim Hong
 * Date: Marh 24 2022
 ******************************************************/

public class Goose extends Bird{
 /* default constructor
  * PostCond: myName == "".
  */
  public Goose(){
    super(); // super references to the super class
  }
 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Goose(String name){
    super(name); // referencing to the super class
  }


 /* A Goose's Call
  * Return: a goose-call ("Honk!").
  */
  public String call(){
    return "Honk!";
  }
} 

/* Owl.java provides an Owl subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Haim Hong
 * Date: March 24 2022
 ******************************************************/

public class Owl extends Bird{
 /* default constructor
  * PostCond: myName == "".
  */
  public Owl(){
    super();
  }
 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Owl(String name){
    super(name);
  }


 /* An Owl's Call
  * Return: an owl-call ("Whoo-hoo!").
  */
  public String call(){
    return "Hoo-Hoo-Hooooo!";
  }
} 

/* Birds.java illustrates inheritance and polymorphism.
 *
 * Begun by: Joel Adams, for CS 214 Lab 10 at Calvin College.
 * Completed by: Haim Hong
 * Date: Marh 24 2022
 *********************************************************/

public class Birds {
  
  public static void main(String[] args) {
      System.out.println("\nWelcome to the Bird Park!\n");
      // testubg each kind of birds
      Bird bird0 = new Bird();

      Bird bird1 = new Bird("Hawkeye");
      bird1.print();

      Duck bird2 = new Duck("Donald");
      bird2.print();

      Goose bird3 = new Goose("Mother Goose");
      bird3.print();

      Owl bird4 = new Owl("Woodsey");
      bird4.print();
      System.out.println();
    }
}

]0;hh35@gold28: ~/cs214/lab/lab10/java[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab10/java[00m$ [Kjavac Birds.java          -deprecation Birds.java
]0;hh35@gold28: ~/cs214/lab/lab10/java[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab10/java[00m$ java Birds

Welcome to the Bird Park!

Hawkeye Bird says Squaaaaaaaaaawk!
Donald Duck says Quack!
Mother Goose Goose says Honk!
Woodsey Owl says Hoo-Hoo-Hooooo!

]0;hh35@gold28: ~/cs214/lab/lab10/java[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab10/java[00m$ exit

Script done on 2022-03-24 16:04:19-04:00 [COMMAND_EXIT_CODE="0"]
