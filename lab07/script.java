Script started on 2022-02-24 12:33:34-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="80" LINES="24"]
]0;hh35@gold18: ~/cs214/lab/lab07[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab07[00m$ cat a Average.java
/* Average.java is a driver for method avg().
 *
 * Started by: Prof. Adams, for CS 214 at Calvin College
 *
 * Student Name: Haim Hong
 * Date: Feb 22
 *
 * Precondition: theArray, is an array of double values.
 * Output: the average of the numbers in theArray.
 ***************************************************************/

import java.io.*;

public class Average
{
  public static void main(String[] args) {

      // Replace this line with definitions of array0 and array1...
      double array0[] = {};
      double array1[] = {9.0, 8.0, 7.0, 6.0};
      // output the average of the values in the arrays
      System.out.println("The first average is " + avg(array0));
      System.out.println("The second average is " + avg(array1));
  }
  

  /* sum() is a method that computes the sum of all the values
   * in an array of doubles.
   * Receive: anArray, an array of doubles.
   * Return: the sum of the values in anArray.
   ************************************************************/

  public static double sum(double[] theArray){ 
    double total = 0.0;
    for (int i = 0; i < theArray.length; i++){ // goes through loop to add all the array into one
        total += theArray[i]; // adds to total
    }
    return total; // return the total
}
  /* avg() is a method that computes the average of the values
   * in an array.
   * Receive: anArray, an array of doubles.
   * Return: the average of the values in anArray.
   **************************************************************/
  public static double avg(double anArray[])
  {
    if (anArray == null || anArray.length <= 0) // check if it sempty or length is lower than or equal to 0
       return 0.0; // return 0
    else
       return sum(anArray) / anArray.length; // get the sum of those arrays and devidie by length to get average
  }

}

]0;hh35@gold18: ~/cs214/lab/lab07[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab07[00m$ java  c -deprecation Average.java
]0;hh35@gold18: ~/cs214/lab/lab07[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab07[00m$ java Average
The first average is 0.0
The second average is 7.5
]0;hh35@gold18: ~/cs214/lab/lab07[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab07[00m$ exit

Script done on 2022-02-24 12:33:59-05:00 [COMMAND_EXIT_CODE="0"]
