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

