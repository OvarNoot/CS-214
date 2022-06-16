Script started on 2022-02-15 18:24:20-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="80" LINES="24"]
]0;hh35@gold28: ~/cs214/lab/lab06[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab06[00m$ cat SPlit     s SPlit    plit.java
/* Split.java is a class and program that splits a string
 * into two substrings.
 * 
 * Begun by: Serita Nelesen
 * Completed by: Haim Hong
 * Date: Feb 15
 ***************************************************************/

import java.util.Scanner;

// java class Split
public class Split
{
  // main program
  public static void main(String[] args)
    {
      Scanner keyboard = new Scanner(System.in);
      // prompt for the string
      System.out.println("\nTo split a string, enter the string: ");
      String theString = keyboard.next();
      
      // prompt for splitting position
      System.out.println("\nEnter the split position: ");
      int position = keyboard.nextInt();

      //Create list, compute results and print
      String [] resultList = new String[2];
      splitter(theString, position, resultList);
      System.out.println("\nThe first part is " + resultList[0] + "\n and the second part is " + resultList[1]);
      
    }
  /* splitter() splits a string according to the position specified
   * Receive: 	theString - the string to be split
   * 		pos - the position at which to split
   *            resList - an array of strings in which to place results
   *****************************************************/
  // replace this line with a definition for splitter
    public static void splitter(String theString, int pos, String[] results)
    {
      results[0] = theString.substring(0, pos); // gets first of results from 0 to position
      results[1] = theString.substring(pos, theString.length()); // second to positiong to the legth of it which take to last of it
    }

}
]0;hh35@gold28: ~/cs214/lab/lab06[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab06[00m$ jas  avac -deprecation Split.java
]0;hh35@gold28: ~/cs214/lab/lab06[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab06[00m$ java Split

To split a string, enter the string: 
je  hello

Enter the split position: 
0

The first part is 
 and the second part is hello
]0;hh35@gold28: ~/cs214/lab/lab06[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab06[00m$ java Split

To split a string, enter the string: 
hello

Enter the split position: 
3

The first part is hel
 and the second part is lo
]0;hh35@gold28: ~/cs214/lab/lab06[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab06[00m$ java Split

To split a string, enter the string: 
hello

Enter the split position: 
5

The first part is hello
 and the second part is 
]0;hh35@gold28: ~/cs214/lab/lab06[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab06[00m$ exit

Script done on 2022-02-15 18:25:15-05:00 [COMMAND_EXIT_CODE="0"]
