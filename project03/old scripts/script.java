Script started on 2022-02-01 20:44:34-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="97" LINES="24"]
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ cat LetterGrades.java
/* LetterGrades.java is a driver for function LetterGrades
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Haim Hong
 * Jan 27 2022
 ****************************************************************/

import java.util.Scanner;

public class LetterGrades {

   public static void main(String[] args) {
      Scanner keyboard = new Scanner(System.in);
      System.out.println("\nEnter your grade: "); // prompt

      int grade = Integer.parseInt(keyboard.next());      // read grade and to int
      System.out.println(letterGrade(grade)); // display its code
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
}]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ javac -deprecation LetterGrades.java
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ java a LetterGrade
Error: Could not find or load main class LetterGrade
Caused by: java.lang.ClassNotFoundException: LetterGrade
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ java Leg tterGrades

Enter your grade: 
100
A
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ java LetterGrades

Enter your grade: 
95
A
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ java LetterGrades

Enter your grade: 
87
B
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ java LetterGrades

Enter your grade: 
77
C
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ java LetterGrades

Enter your grade: 
63
D
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ java LetterGrades55  

Enter your grade: 
55
F
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ java LetterGrades

Enter your grade: 
1 30
F
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ exit

Script done on 2022-02-01 20:45:35-05:00 [COMMAND_EXIT_CODE="0"]
