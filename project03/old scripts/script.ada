Script started on 2022-02-01 20:53:54-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ cat letr ter_grade. s.d adb
-- 
-- Haim Hong
-- Jan 27 2022
--
-- Input: grade in number
-- Precondition: grade is one of 9~10, 8, 7, 6
-- Output: Outputs right Letter Grades for it
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure letter_grades is

   grade : Integer;
   
   -- replace this comment with the definition of yearCode()
   function letterGrade(l: integer) return string is

   begin
    case l / 10 is -- after divison 
        when 10 => return "A";   -- if equal to 10 then gives out right letter thatt matches for it
        when 9 => return "A";
        when 8 => return "B";
        when 7 => return "C";
        when 6 => return "D";
        when others => return "F";
    end case;
   end letterGrade;

begin                                          
   Put("Enter your grades: ");  -- Prompt for input
   Get(grade);                   -- Input
   Put( letterGrade(grade) );        -- Convert and output
   New_Line;
end letter_grades;]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ ./letter        gnatmake_  letteR_  r_grades
x86_64-linux-gnu-gcc-7 -c letter_grades.adb
x86_64-linux-gnu-gnatbind-7 -x letter_grades.ali
x86_64-linux-gnu-gnatlink-7 letter_grades.ali
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ le=   letter      ./letter_grades
Enter your grades: 100
A
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ ./letter_grades
Enter your grades: 99
A
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ ./letter_grades
Enter your grades: 86
B
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ ./letter_grades
Enter your grades: 73
C
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ ./letter_grades
Enter your grades: 678 
D
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ ./letter_grades
Enter your grades: 54
F
]0;hh35@remotel3: ~/cs214/project/project03[01;32mhh35@remotel3[00m:[01;34m~/cs214/project/project03[00m$ exit

Script done on 2022-02-01 20:54:47-05:00 [COMMAND_EXIT_CODE="0"]
