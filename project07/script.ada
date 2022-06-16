Script started on 2022-02-25 13:44:30-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="144" LINES="23"]
]0;hh35@gold27: ~/cs214/project/project07[01;32mhh35@gold27[00m:[01;34m~/cs214/project/project07[00m$ cat array_processing.adb
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
    
end array_processing;]0;hh35@gold27: ~/cs214/project/project07[01;32mhh35@gold27[00m:[01;34m~/cs214/project/project07[00m$ gnatmake array_processing
x86_64-linux-gnu-gcc-7 -c array_processing.adb
x86_64-linux-gnu-gnatbind-7 -x array_processing.ali
x86_64-linux-gnu-gnatlink-7 array_processing.ali
]0;hh35@gold27: ~/cs214/project/project07[01;32mhh35@gold27[00m:[01;34m~/cs214/project/project07[00m$ gnatmake array_processing
gnatmake: "array_processing" up to date.
]0;hh35@gold27: ~/cs214/project/project07[01;32mhh35@gold27[00m:[01;34m~/cs214/project/project07[00m$ / ./array_processing
Enter size: 5 5
Enter value for array: 1
Enter value for array: 2
Enter value for array: 3
Enter value for array: 4
Enter value for array: 5
Printing Arrays
 1.00000E+00
 2.00000E+00
 3.00000E+00
 4.00000E+00
 5.00000E+00
]0;hh35@gold27: ~/cs214/project/project07[01;32mhh35@gold27[00m:[01;34m~/cs214/project/project07[00m$ ./array_processing
Enter size: 7 4 3
Enter value for array: 91
Enter value for array: 52
Enter value for array: 73
Printing Arrays
 9.10000E+01
 5.20000E+01
 7.30000E+01
]0;hh35@gold27: ~/cs214/project/project07[01;32mhh35@gold27[00m:[01;34m~/cs214/project/project07[00m$ ./array_processing
Enter size: 7
Enter value for array: 22  11
Enter value for array: 22
Enter value for array: 33
Enter value for array: 44
Enter value for array: 55
Enter value for array: 66
Enter value for array: 77
Printing Arrays
 1.10000E+01
 2.20000E+01
 3.30000E+01
 4.40000E+01
 5.50000E+01
 6.60000E+01
 7.70000E+01
]0;hh35@gold27: ~/cs214/project/project07[01;32mhh35@gold27[00m:[01;34m~/cs214/project/project07[00m$ exit

Script done on 2022-02-25 13:45:48-05:00 [COMMAND_EXIT_CODE="0"]
