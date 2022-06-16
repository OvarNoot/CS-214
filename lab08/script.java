Script started on 2022-03-08 16:39:34-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="129" LINES="24"]
]0;hh35@gold17: ~/cs214/lab/lab08[01;32mhh35@gold17[00m:[01;34m~/cs214/lab/lab08[00m$ cat NameTester.java
/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Haim Hong
 * Date: March 8 2022
 ************************************************************/

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
}

]0;hh35@gold17: ~/cs214/lab/lab08[01;32mhh35@gold17[00m:[01;34m~/cs214/lab/lab08[00m$ ls
 [0m[01;34mclojure[0m       Makefile      name_tester.adb   NameTester.java   NameTester.rb   script.java
'#Makefile#'   [01;32mname_tester[0m   name_tester.ali   name_tester.o     script.ada
]0;hh35@gold17: ~/cs214/lab/lab08[01;32mhh35@gold17[00m:[01;34m~/cs214/lab/lab08[00m$ make clean
rm -f *.class *.o *.ali *~ name_tester
]0;hh35@gold17: ~/cs214/lab/lab08[01;32mhh35@gold17[00m:[01;34m~/cs214/lab/lab08[00m$ ls
 [0m[01;34mclojure[0m  '#Makefile#'   Makefile   name_tester.adb   NameTester.java   NameTester.rb   script.ada   script.java
]0;hh35@gold17: ~/cs214/lab/lab08[01;32mhh35@gold17[00m:[01;34m~/cs214/lab/lab08[00m$ make java
javac -deprecation NameTester.java
]0;hh35@gold17: ~/cs214/lab/lab08[01;32mhh35@gold17[00m:[01;34m~/cs214/lab/lab08[00m$ ls
 [0m[01;34mclojure[0m       Makefile     name_tester.adb    NameTester.java   script.ada
'#Makefile#'   Name.class   NameTester.class   NameTester.rb     script.java
]0;hh35@gold17: ~/cs214/lab/lab08[01;32mhh35@gold17[00m:[01;34m~/cs214/lab/lab08[00m$ java -ea NameTester
John Paul Jones
All tests passed!
]0;hh35@gold17: ~/cs214/lab/lab08[01;32mhh35@gold17[00m:[01;34m~/cs214/lab/lab08[00m$ exit

Script done on 2022-03-08 16:40:24-05:00 [COMMAND_EXIT_CODE="0"]
