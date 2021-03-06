-- log_table.adb computes a table of logarithms.
--
-- Input: start, stop, increment, three reals.
-- Precondition: increment is positive.
-- Output: A table of logarithms beginning with log(start),
--         ending with log(stop), with intervals of increment.
--
-- Begun by: Prof. Adams, for CS 214 at Calvin College.
-- Completed by: Haim Hong
-- Date: Feb 3 2022
--------------------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;
use  Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;

procedure log_table is

   Start, Stop, Increment : Float;

begin                                           -- Prompt for input
   Put_Line("To print a table of logarithms,");
   Put(" enter the start, stop, and increment values: ");
   Get(Start); Get(Stop); Get(Increment); -- gets the input

   -- Replace this line with a loop to generate the table of logs.
   while Start <= Stop loop
      Put("The logarithm of "); -- outputs the results 
      Put(Start);
      Put(" is ");
      Put(log(Start, 10.0)); -- log of start
      New_Line;
      Start := Start + Increment; -- increment by user input of increment
   end loop;
end log_table;

