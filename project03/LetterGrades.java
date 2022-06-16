/* LetterGrades.java is a driver for function LetterGrades
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Haim Hong
 * Jan 27 2022
 ****************************************************************/

import java.util.Scanner;

public class LetterGrades {

   public static void main(String[] args) {
      for (int i = 100; i > 50; i-=3){ // looping until i is below 50
         System.out.println("\nTesting grade: " + i); // prints out the Grade its testing currently
         System.out.println(letterGrade(i)); // display its proper gRADE
      }
   }
   public static char letterGrade(int average)
   {
      switch (average / 10)
      {
         case 10: case 9: // checkes for each cases to find what matches average and returns right Letter grade for it
            return 'A';
         case 8:
            return 'B';
         case 7:
            return 'C';
         case 6:
            return 'D';
         default:
            return 'F';
      }
   }
}