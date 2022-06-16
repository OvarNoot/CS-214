Script started on 2022-03-10 16:11:47-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="92" LINES="24"]
]0;hh35@gold13: ~/cs214/project/project08[01;32mhh35@gold13[00m:[01;34m~/cs214/project/project08[00m$ java -ea NameTester[1Pesterls[Kmake javals[Kmake cleanls[Kcat NameTester.java
/* Aggregate Operations
 * Student: Haim Hong
 * Date: March 10 2022
 ************************************************************/

import java.awt.RenderingHints.Key;
import java.util.Scanner;

public class NameTester  
{
  public static void main(String[] args)
  {
      Name aName = new Name("John", "Paul", "Jones");

      assert aName.getFirst().equals("John") ;
      assert aName.getMiddle().equals("Paul") ;
      assert aName.getLast().equals("Jones") ;

      System.out.println(aName);
      assert aName.toString().equals("John Paul Jones");

      // Setting the Names
      aName.setFirst("David");
      aName.setMiddle("Justin");
      aName.setLast("Joshua");
      // Testing the Names
      assert aName.getFirst().equals("David") ;
      assert aName.getMiddle().equals("Justin") ;
      assert aName.getLast().equals("Joshua") ;

      // Setting Names for lfmi
      aName.setFirst("Tyler");
      aName.setMiddle("Henry");
      aName.setLast("Voss");
      // Testing lfmi Last First with Middle Initials
      assert aName.lfmi().equals("Voss, Tyler, H.");

      Scanner keyboard = new Scanner(System.in);
      // Reads the name
      System.out.println("Used previeous set First Middle Last. (Tyler Henry Voss for assert for readName");
      aName.readName(keyboard);
      // Using get function to check if it worked as you typed
      assert aName.getFirst().equals("Tyler");
      assert aName.getMiddle().equals("Henry");
      assert aName.getLast().equals("Voss");
      
      

      System.out.println("All tests passed!");
  }
}

// Replace this line with the declaration of class Name...

class Name
{
  private String myFirst, myMiddle, myLast; //the data members

  public Name(String first, String middle, String last) // initializes them
  {
    myFirst = first;
    myMiddle = middle;
    myLast = last;
  }

  public String getFirst()
  {
     return myFirst; // return the first name
  }
  public String getMiddle()
  {
     return myMiddle; // return the middle name
  }
  public String getLast()
  {
     return myLast; // // return the last name
  }
  public String toString()
  {
     return myFirst + ' ' + myMiddle + ' ' + myLast; //return the whole names
  }

  public void setFirst(String aFirst) // sets the first name into different name
  {
   myFirst = aFirst;
  }
  public void setMiddle(String aMiddle) // sets the middle name into different name
  {
   myMiddle = aMiddle;
  }
  public void setLast(String aLast) // sets the last name into different name
  {
   myLast = aLast;
  }
  public String lfmi() // returns last first middle initial
  { 
   return myLast + ", " + myFirst + ", " + myMiddle.charAt(0) + '.';
  }
  public void readName(Scanner input) // reads the names from user first middle last
  {
   System.out.println("Enter first name");
   myFirst = input.next();
   System.out.println("Enter middle name");
   myMiddle = input.next();
   System.out.println("Enter last name");
   myLast = input.next();
  }
}

]0;hh35@gold13: ~/cs214/project/project08[01;32mhh35@gold13[00m:[01;34m~/cs214/project/project08[00m$ make clean          ls
[0m[01;34mclojure[0m   Name.class       NameTester.class  NameTester.rb
Makefile  name_tester.adb  NameTester.java   script.java
]0;hh35@gold13: ~/cs214/project/project08[01;32mhh35@gold13[00m:[01;34m~/cs214/project/project08[00m$ make clean
rm -f *.class *.o *.ali *~ name_tester
]0;hh35@gold13: ~/cs214/project/project08[01;32mhh35@gold13[00m:[01;34m~/cs214/project/project08[00m$ ls
[0m[01;34mclojure[0m  Makefile  name_tester.adb  NameTester.java  NameTester.rb  script.java
]0;hh35@gold13: ~/cs214/project/project08[01;32mhh35@gold13[00m:[01;34m~/cs214/project/project08[00m$ make java
javac -deprecation NameTester.java
l]0;hh35@gold13: ~/cs214/project/project08[01;32mhh35@gold13[00m:[01;34m~/cs214/project/project08[00m$ ls  ls
[0m[01;34mclojure[0m   Name.class       NameTester.class  NameTester.rb
Makefile  name_tester.adb  NameTester.java   script.java
]0;hh35@gold13: ~/cs214/project/project08[01;32mhh35@gold13[00m:[01;34m~/cs214/project/project08[00m$ d java -ea NameTeser
Error: Could not find or load main class NameTeser
Caused by: java.lang.ClassNotFoundException: NameTeser
]0;hh35@gold13: ~/cs214/project/project08[01;32mhh35@gold13[00m:[01;34m~/cs214/project/project08[00m$ java -ea NameTeser[1@ter
John Paul Jones
Used previeous set First Middle Last. (Tyler Henry Voss for assert for readName
Enter first name
d Tyler
Enter middle name
Henry
Enter last name
Voss
All tests passed!
]0;hh35@gold13: ~/cs214/project/project08[01;32mhh35@gold13[00m:[01;34m~/cs214/project/project08[00m$ exit

Script done on 2022-03-10 16:12:28-05:00 [COMMAND_EXIT_CODE="0"]
