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
end letter_grades;