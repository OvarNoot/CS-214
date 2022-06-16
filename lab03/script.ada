Script started on 2022-01-27 15:13:32-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="95" LINES="24"]
]0;hh35@gold18: ~/cs214/lab/lab03[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab03[00m$ cat year_codes.adb
-- year_codes.adb converts academic year codes to corresponding years.
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Haim Hong
-- Jan 27 2022
--
-- Input: year, a string
-- Precondition: year is one of "freshman", "sophomore", "junior", "senior"
-- Output: The year code (1, 2, 3 or 4) corresponding to year.
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure year_codes is

   year : String(1..9) := "         ";
   charsRead : Natural;
   
   -- replace this comment with the definition of yearCode()
   function yearCode(y: string) return integer is

   begin
      if y = "freshman " then
         return 1;
      elsif y = "sophomore" then
         return 2;
      elsif y = "junior   " then
         return 3;
      elsif y = "senior   " then
         return 4;
      else
         return 0;
      end if;
   end yearCode;

begin                                          
   Put("Enter your academic year: ");           -- Prompt for input
   Get_Line(year, charsRead);                   -- Input
   Put( yearCode(year) );                       -- Convert and output
   New_Line;
end year_codes;

--


--]0;hh35@gold18: ~/cs214/lab/lab03[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab03[00m$ gnatmake year_codes.adb
x86_64-linux-gnu-gcc-7 -c year_codes.adb
x86_64-linux-gnu-gnatbind-7 -x year_codes.ali
x86_64-linux-gnu-gnatlink-7 year_codes.ali
]0;hh35@gold18: ~/cs214/lab/lab03[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab03[00m$ gnatmake year_codes.adb
gnatmake: "year_codes" up to date.
]0;hh35@gold18: ~/cs214/lab/lab03[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab03[00m$ ./year_codes
Enter your academic year: freshman
          1
]0;hh35@gold18: ~/cs214/lab/lab03[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab03[00m$ ./y   ./year_codes
Enter your academic year: sophomore
          2
]0;hh35@gold18: ~/cs214/lab/lab03[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab03[00m$ ./year_codes
Enter your academic year: junior
          3
]0;hh35@gold18: ~/cs214/lab/lab03[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab03[00m$ ./year_codessenior      
Enter your academic year: senior
          4
]0;hh35@gold18: ~/cs214/lab/lab03[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab03[00m$ ./year_codes
Enter your academic year: graduate
          0
]0;hh35@gold18: ~/cs214/lab/lab03[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab03[00m$ exit

Script done on 2022-01-27 15:14:31-05:00 [COMMAND_EXIT_CODE="0"]
