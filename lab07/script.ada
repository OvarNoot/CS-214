Script started on 2022-02-24 12:34:04-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="80" LINES="24"]
]0;hh35@gold18: ~/cs214/lab/lab07[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab07[00m$ cat ave     average   age.r ada
cat: average.ada: No such file or directory
]0;hh35@gold18: ~/cs214/lab/lab07[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab07[00m$ cat average.adb
-- average.adb "test-drives" function Average.
-- Precondition: theArray is an array of numbers.
-- Output: the average of the numbers.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Haim Hong
-- Date: Feb 22
-----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;             -- Put(String)
with Ada.Float_Text_IO; use Ada.Float_Text_IO; -- Put(Float)

procedure average is

-- Declare Vector type
type Vector is array ( Positive range <>) of Float;
-- Define array0 as an array containing no values
array0 : Vector := (0.0, 0.0);
-- Define array1 as an array containing 9, 8, 7, 6
array1 : Vector := (9.0, 8.0, 7.0, 6.0);
----------------------------------------------
-- sum() sums the values in an array           -
-- Receive: anArray, an array of numbers     -
-- Return: the sum of the values in anArray. -
----------------------------------------------
  function sum(A: Vector) return Float is 
    Total : Float := 0.0; 
  begin 
    for I in A'Range -- until it reaches the range numb
    loop 
      Total := Total + A(I); -- compute total in loop
    end loop; 
    return Total; -- retur nthe total sum
  end sum; 

-----------------------------------------------
--- average() average out he values in an array
--- receive array, an array of numbers
--- return the average of the values in array
-----------------------------------------------
function average(B: Vector) return Float is

begin
   if B'Length = 0 then -- if length is just 0
      return 0.0; -- return 0
   else
      return sum(B) / Float(B'Length); -- return the average
   end if;
end average;

begin
   Put(" average 0 is ");
   Put( average(array0) );
   New_line;
   Put(" average 1 is ");
   Put( average(array1) );
   New_line;
end average;

]0;hh35@gold18: ~/cs214/lab/lab07[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab07[00m$ gnatmake average
x86_64-linux-gnu-gcc-7 -c average.adb
x86_64-linux-gnu-gnatbind-7 -x average.ali
x86_64-linux-gnu-gnatlink-7 average.ali
]0;hh35@gold18: ~/cs214/lab/lab07[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab07[00m$ a gnatmake average
gnatmake: "average" up to date.
]0;hh35@gold18: ~/cs214/lab/lab07[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab07[00m$ ./average
 average 0 is  0.00000E+00
 average 1 is  7.50000E+00
]0;hh35@gold18: ~/cs214/lab/lab07[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab07[00m$ exit

Script done on 2022-02-24 12:34:54-05:00 [COMMAND_EXIT_CODE="0"]
