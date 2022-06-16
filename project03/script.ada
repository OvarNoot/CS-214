Script started on 2022-02-02 20:23:10-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="101" LINES="24"]
]0;hh35@gold18: ~/cs214/project/project03[01;32mhh35@gold18[00m:[01;34m~/cs214/project/project03[00m$ cat letter_grades.da  ada
cat: letter_grades.ada: No such file or directory
]0;hh35@gold18: ~/cs214/project/project03[01;32mhh35@gold18[00m:[01;34m~/cs214/project/project03[00m$ cat letter_grades.ada  db
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

   grade : Integer := 100;
   
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

   while grade >= 50 loop -- loop until 50 or below                              
      Put_Line("Testing grades: " & Integer'Image(grade));  -- Prompt for input
      Put( letterGrade(grade) );        -- output the Proper Letter Grade for it
      New_Line;
      grade := grade - 3; -- Deducts 3 so it will eventually reach 50
   end loop;
end letter_grades;]0;hh35@gold18: ~/cs214/project/project03[01;32mhh35@gold18[00m:[01;34m~/cs214/project/project03[00m$ gnatmake lettr er_grades
x86_64-linux-gnu-gcc-7 -c letter_grades.adb
x86_64-linux-gnu-gnatbind-7 -x letter_grades.ali
x86_64-linux-gnu-gnatlink-7 letter_grades.ali
]0;hh35@gold18: ~/cs214/project/project03[01;32mhh35@gold18[00m:[01;34m~/cs214/project/project03[00m$ ./letter_grades
Testing grades:  100
A
Testing grades:  97
A
Testing grades:  94
A
Testing grades:  91
A
Testing grades:  88
B
Testing grades:  85
B
Testing grades:  82
B
Testing grades:  79
C
Testing grades:  76
C
Testing grades:  73
C
Testing grades:  70
C
Testing grades:  67
D
Testing grades:  64
D
Testing grades:  61
D
Testing grades:  58
F
Testing grades:  55
F
Testing grades:  52
F
]0;hh35@gold18: ~/cs214/project/project03[01;32mhh35@gold18[00m:[01;34m~/cs214/project/project03[00m$ exit

Script done on 2022-02-02 20:23:53-05:00 [COMMAND_EXIT_CODE="0"]
