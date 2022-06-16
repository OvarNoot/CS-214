Script started on 2022-02-15 18:30:42-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="117" LINES="24"]
]0;hh35@gold28: ~/cs214/lab/lab06[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab06[00m$ cat split.adb
-- split.adb splits an input string about a specified position.
--
-- Input: Astring, a string,
--        Pos, an integer.
-- Precondition: pos is in Astring'Range.
-- Output: The substrings Astring(Astring'First..Pos-1) and
--                        Astring(Pos..Astring'Last).
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Haim Hong
-- Date: Feb 15
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;

procedure split is

   EMPTY_STRING : String := "                                        ";

   Astring, Part1, Part2 : String  := EMPTY_STRING;
   Pos, Chars_read       : Natural;

   ------------------------------------------------
   --  split() splits a string in two.           
   -- Receive: The_String, the string to be split,
   --          Position, the split index.        
   -- PRE: 0 < Position <= The_String.length(). 
   --     (Ada arrays are 1-relative by default)
   -- Passback: First_Part - the first substring,
   --           Last_Part - the second substring.
   ------------------------------------------------
   -- Replace this line with definition of split() 
   procedure split (The_String: String; Pos: Integer; Part1: in out String; Part2: in out String) is

      begin
         Move(The_String(1 .. pos-1), Part1);
         Move(The_String(pos .. The_String'Length), Part2);
      end split;

begin                                           -- Prompt for input
   Put("To split a string, enter the string: ");
   Get_Line(Astring, Chars_Read);
   Put("Enter the split position: ");
   Get(Pos);

   split(Astring, Pos, Part1, Part2);

   Put("The first part is ");
   Put_Line(Part1);
   Put(" and the second part is ");
   Put_Line(Part2);

end split;

]0;hh35@gold28: ~/cs214/lab/lab06[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab06[00m$ gnatmake split
x86_64-linux-gnu-gcc-7 -c split.adb
split.adb:37:26: warning: index for "The_String" may assume lower bound of 1
split.adb:37:26: warning: suggested replacement: "The_String'First"
split.adb:38:33: warning: index for "The_String" may assume lower bound of 1
split.adb:38:33: warning: suggest replacement of "The_String'Length" by "The_String'Last"
x86_64-linux-gnu-gnatbind-7 -x split.ali
x86_64-linux-gnu-gnatlink-7 split.ali
]0;hh35@gold28: ~/cs214/lab/lab06[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab06[00m$ s gnatmake sl plit
gnatmake: "split" up to date.
]0;hh35@gold28: ~/cs214/lab/lab06[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab06[00m$ ./split
To split a string, enter the string: j hello
Enter the split position: 1
The first part is                                         
 and the second part is hello                                   
]0;hh35@gold28: ~/cs214/lab/lab06[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab06[00m$ ./split
To split a string, enter the string: hello
Enter the split position: 4
The first part is hel                                     
 and the second part is lo                                      
]0;hh35@gold28: ~/cs214/lab/lab06[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab06[00m$ ./split
To split a string, enter the string: hello
Enter the split position: 6
The first part is hello                                   
 and the second part is                                         
]0;hh35@gold28: ~/cs214/lab/lab06[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab06[00m$ exit

Script done on 2022-02-15 18:31:37-05:00 [COMMAND_EXIT_CODE="0"]
