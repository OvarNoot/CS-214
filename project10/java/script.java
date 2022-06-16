Script started on 2022-03-25 13:40:08-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="98" LINES="24"]
]0;hh35@gold28: ~/cs214/project/project10/java[01;32mhh35@gold28[00m:[01;34m~/cs214/project/project10/java[00m$ cat BIrd   ird.java Duck.java Good.  se.java O Owl.java Penguin.ja va Ostrich.java Kiwi, .java WalkingBird.java FlyingBird.java Birds.java
/* Bird.java provides a Bird class.
 *
 * Completed by: Haim Hong
 * Date: March 25 2022
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
/* A Bird's movement
 *  Return: a default bird moement ("flew")
 */
  public String movement(){
    return "flew";
  }

 /* Output a Bird 
  * Output: Everything known about myself
  *          to the standard output stream.
  */
  public void print()
  {
    System.out.println(getName() + ' ' + getClass().getName() + " just " + movement() + " and said " + call());
  }


  private String myName;
}

/* Duck.java provides a Duck subclass of FlyingBird.
 *
 * Completed by: Haim Hong
 * Date: Marh 25 2022
 ******************************************************/

public class Duck extends FlyingBird{
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
 * Completed by: Haim Hong
 * Date: Marh 25 2022
 ******************************************************/

public class Goose extends FlyingBird{
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

/* Owl.java provides an Owl subclass of FlyingBird.
 *
 * Completed by: Haim Hong
 * Date: March 25 2022
 ******************************************************/

public class Owl extends FlyingBird{
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

/* Penguin.java provides an Penguin subclass of Walkingbird.
 *
 * Completed by: Haim Hong
 * Date: March 25 2022
 ******************************************************/

public class Penguin extends WalkingBird{
    /* default constructor
     * PostCond: myName == "".
     */
     public Penguin(){
       super();
     }
    /* explicit constructor
     * Receive: name, a String 
     * PostCond: myName == name.
     */
     public Penguin(String name){
       super(name);
     }

   
   
    /* An Penguin's Call
     * Return: an owl-call ("Whoo-hoo!").
     */
     public String call(){
       return "Huh-huh-huh-huuuuh!";
     }
   } /* Ostrich.java provides an Ostrich subclass of Walkingbird.
 *
 * Completed by: Haim Hong
 * Date: March 25 2022
 ******************************************************/

public class Ostrich extends WalkingBird{
    /* default constructor
     * PostCond: myName == "".
     */
     public Ostrich(){
       super();
     }
    /* explicit constructor
     * Receive: name, a String 
     * PostCond: myName == name.
     */
     public Ostrich(String name){
       super(name);
     }
   
   
    /* An Ostrich's Call
     * Return: an owl-call ("Whoo-hoo!").
     */
     public String call(){
       return "Snork!";
     }
   } /* Kiwi.java provides an Kiwi subclass of Walkingbird.
 *
 * Completed by: Haim Hong
 * Date: March 25 2022
 ******************************************************/

public class Kiwi extends WalkingBird{
    /* default constructor
     * PostCond: myName == "".
     */
     public Kiwi(){
       super();
     }
    /* explicit constructor
     * Receive: name, a String 
     * PostCond: myName == name.
     */
     public Kiwi(String name){
       super(name);
     }
   
   
    /* An Ostrich's Call
     * Return: an owl-call ("Whoo-hoo!").
     */
     public String call(){
       return "Phrrrrrrrr!";
     }
   } /* WalkingBIrd.java is subclass of Bird
 *
 * Completed by: Haim Hong
 * Date: March 25 2022
 ******************************************************/

public class WalkingBird extends Bird{
  /* default constructor
  * PostCond: myName == "".
  */
    public WalkingBird(){
        super();
      }
     /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
    public WalkingBird(String name){
        super(name);
      }
  /* A WalkingBird's movement
  * Return: a movement for WalkingBird
  */
    public String movement(){
        return "walked";
      }
}/* FlyingBird.java is subclass of Bird
 *
 * Completed by: Haim Hong
 * Date: March 25 2022
 ******************************************************/


public class FlyingBird extends Bird{
 /* default constructor
  * PostCond: myName == "".
  */
    public FlyingBird(){
        super(); // super references to the super class
      }
 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
    public FlyingBird(String name){
        super(name);
      }
  /* A FlyingBird's movement
  * Return: a movement for flying bird
  */
    public String movement(){
        return "flew";
      }
}
/* Birds.java illustrates inheritance and polymorphism.
 *
 * Begun by: Joel Adams, for CS 214 Lab 10 at Calvin College.
 * Completed by: Haim Hong
 * Date: Marh 25 2022
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

      Bird bird5 = new Ostrich("Orville");
      bird5.print();

      Bird bird6 = new Kiwi("Fruit");
      bird6.print();

      Bird bird7 = new Penguin("Peter");
      bird7.print();
      System.out.println();


    }
}

]0;hh35@gold28: ~/cs214/project/project10/java[01;32mhh35@gold28[00m:[01;34m~/cs214/project/project10/java[00m$ [Kjava  c -deprecation Birds.java
]0;hh35@gold28: ~/cs214/project/project10/java[01;32mhh35@gold28[00m:[01;34m~/cs214/project/project10/java[00m$ java BIrds    irds.java
error: class found on application class path: Birds
]0;hh35@gold28: ~/cs214/project/project10/java[01;32mhh35@gold28[00m:[01;34m~/cs214/project/project10/java[00m$ java BIrd   irds

Welcome to the Bird Park!

Hawkeye Bird just flew and said Squaaaaaaaaaawk!
Donald Duck just flew and said Quack!
Mother Goose Goose just flew and said Honk!
Woodsey Owl just flew and said Hoo-Hoo-Hooooo!
Orville Ostrich just walked and said Snork!
Fruit Kiwi just walked and said Phrrrrrrrr!
Peter Penguin just walked and said Huh-huh-huh-huuuuh!

]0;hh35@gold28: ~/cs214/project/project10/java[01;32mhh35@gold28[00m:[01;34m~/cs214/project/project10/java[00m$ exit

Script done on 2022-03-25 13:41:24-04:00 [COMMAND_EXIT_CODE="0"]
