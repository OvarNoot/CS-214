--
--
-- Gets the size of the array, Gets the values from user for it to be put into array
-- Outputs the values from the array in seperate lines
--
-- Haim Hong
-- Feb 24
--
-------------------------------------


with Ada.Text_IO; use Ada.Text_IO;             
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure array_processing is

type Vector is array (Integer range <>) of Float;

input : FLoat := 0.0;

    -- creates one dimensional empty array in order to return it
    -- just outputs the empty array
    function Create_Vector return vector is 
        size : Integer;
    begin
        Put("Enter size: ");
        Get(size); -- gets size
        declare
            anArray : Vector(1..size) := (others => 0.0); -- creats empty array that is ranged with 1 to size
        begin  
            return anArray; -- returns its empty array with custom size
        end;
    end Create_Vector;

    -- reads array from user and save it into array
    -- gets empty array and fills it wiht user intput
    -- gives out the filled array
    procedure readArray (aVec: in out Vector) is
    begin
        for Y in aVec'Range (1) -- loops until the end of array
        loop
            Put("Enter value for array: ");
            Get(input); -- gets input and puts it into the array
            aVec(Y) := input;
        end loop;
    end readArray;

    -- gets the array
    -- prints out the values stores in arrays in seperate lines
    procedure printArray (aVec: Vector) is
    begin
        Put_Line("Printing Arrays");
        for Y in aVec'Range (1) -- loops until the end of array
        loop
            Put(aVec(Y)); -- prints out values
            New_Line; -- for it to be on seperate lines
        end loop;
    end printArray;
    
    array0 : Vector := Create_Vector; -- creates empty array

begin  
    readArray (array0); -- calls functions to use them
    printArray (array0);
    
end array_processing;