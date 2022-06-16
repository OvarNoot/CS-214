-- circle_area.adb computes the area of a circle.
--
-- Input: The radius of the circle.
-- Precondition: The radius is a positive number.
-- Output: The area of the circle.
--
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Haim Hong
-- Date: Jan 13 2022
----------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure circle_area is

   radius, area : float; 

   -- function circleArea computes a circle's area, given its radius
   -- Parameter: r, a float
   -- Precondition: r >= 0.0
   -- Return: the area of the circle whose radius is r
   ----------------------------------------------------
   function circleArea(r: in float) return float is 
      PI : constant := 3.1415927;
   begin
      return PI * r ** 2;
   end circleArea;

begin                           
   New_Line; -- prints new line
   Put_Line("To compute the area of a circle,"); -- prints out the statement with new line 
   Put("enter its radius: "); -- prints string only
   Get(radius); -- gets the input

   area := circleArea(radius); -- computes the area

   New_Line;
   Put("The circle's area is "); -- prints string
   Put(area); -- print out the result shortand
   New_Line; New_Line; -- prints new line

   Put("The circle's area is ");
   Put(area, 1, 15, 0); -- prints out area until 15th decimal points
   New_Line; New_Line; -- prints new line
end circle_area;