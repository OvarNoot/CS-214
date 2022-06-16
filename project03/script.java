Script started on 2022-02-02 20:24:23-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="101" LINES="24"]
]0;hh35@gold18: ~/cs214/project/project03[01;32mhh35@gold18[00m:[01;34m~/cs214/project/project03[00m$ cat LetterGrades.java
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
}]0;hh35@gold18: ~/cs214/project/project03[01;32mhh35@gold18[00m:[01;34m~/cs214/project/project03[00m$ jav   cat LetterGrades.java[6P./letter_grades[7@gnatmake letter_grades[1Pcat letter_grades.adbgnatmake letter_grades[7P./letter_gradescat LetterGrades.java[Kcat LetterGrades.java[6P./letter_gradescat LetterGrades.java[6P./letter_grades[7@gnatmake letter_grades[1Pcat letter_grades.adbaruby letter_grades.rbcat letter_grades.adaruby letter_grades.rb[1Pcat letter_grades.rblojure -cp . -m letter_grades[9Pat letter_grades.clj[Kgrades.cljlojure -cp . -m letter_grades[10Pat letter_grades.rb[1@ruby letter_grades.rbcat letter_grades.adabgnatmake letter_grades[7P./letter_gradescat LetterGrades.java[Kcat LetterGrades.java[6P./letter_gradescat LetterGrades.java[Kjavac p-  -deprecation LetterGrades.java
]0;hh35@gold18: ~/cs214/project/project03[01;32mhh35@gold18[00m:[01;34m~/cs214/project/project03[00m$ java LEtte    etterGrades

Testing grade: 100
A

Testing grade: 97
A

Testing grade: 94
A

Testing grade: 91
A

Testing grade: 88
B

Testing grade: 85
B

Testing grade: 82
B

Testing grade: 79
C

Testing grade: 76
C

Testing grade: 73
C

Testing grade: 70
C

Testing grade: 67
D

Testing grade: 64
D

Testing grade: 61
D

Testing grade: 58
F

Testing grade: 55
F

Testing grade: 52
F
]0;hh35@gold18: ~/cs214/project/project03[01;32mhh35@gold18[00m:[01;34m~/cs214/project/project03[00m$ exit

Script done on 2022-02-02 20:25:12-05:00 [COMMAND_EXIT_CODE="0"]
