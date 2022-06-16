-- it computes the area of rectangle
--
-- gets width and legnth of the rectangle
-- both has to be positive number
-- outputs the area of rectangle
--
-- Haim Hong
-- Jan 14 2022
----------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure rectangle_area is
    width, length, area : float; 

    function rectangleArea(w: in float; l: in float) return float is 
    begin
        return w * l;
    end rectangleArea;
begin                           
    New_Line; -- prints new line
    Put_Line("To compute the area of a rectangle,"); -- prints out the statement with new line 
    Put("enter its width: "); -- prints string only
    Get(width); -- gets the input
    Put("enter its length: "); -- prints string only
    Get(length); -- gets the input

    area := rectangleArea(width, length); -- computes the area

    New_Line;
    Put("The rectangle's area is "); -- prints string
    Put(area); -- print out the result shortand
    New_Line; New_Line; -- prints new line

    Put("The rectangle's area is ");
    Put(area, 1, 15, 0); -- prints out area until 15th decimal points
    New_Line; New_Line; -- prints new line
end rectangle_area;