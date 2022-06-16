Script started on 2022-03-17 12:53:21-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="116" LINES="24"]
]0;hh35@gold28: ~/cs214/lab/lab09/ada[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab09/ada[00m$ cat name_package.ads name_package.adb name_tester.adb[35Pruby nameTester.rb[35@cat name_package.ads name_package.adb name_tester.adb
-- name_package.ads declares the Name type and its operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Haim Hong
-- Date: March 17 2022
--------------------------------------------------------------
with Ada.Text_IO; use Ada.Text_IO;

package Name_Package is
    type Name is private;

    ----------------------------------------------
    -- Init initializes a Name variable          
    -- Receive: Nm, the Name variable;          
    --          First, the first name;         
    --          Middle, the middle name;      
    --          Last, the last name.         
    -- Return: Nm, its fields set to First, 
    --               Middle, and Last.     
    ----------------------------------------------
    procedure Init(Nm: out Name;
                    First, Middle, Last : in String);
    ----------------------------------------------
    -- getFirst(Name) retrieves Name.myFirst        
    -- Receive: Nm, a Name.                      
    -- PRE: Nm has been initialized.            
    -- Return: Nm.myFirst.                     
    ----------------------------------------------
    function getFirst( Nm: in Name) return String;
  ----------------------------------------------
  -- getMiddle(Name) retrieves Name as a String 
  -- Receive: Nm, a Name.        
  -- PRE: Nm has been initialized.
  -- Return: Nm.myMiddle. 
  ----------------------------------------------
    function getMiddle( Nm: in Name) return String;
  ----------------------------------------------
  -- getLast(Name) retrieves Name.myLast       
  -- Receive: Nm, a Name.                    
  -- PRE: Nm has been initialized.            
  -- Return: Nm.myLast.                        
  ----------------------------------------------
    function getLast( Nm: in Name) return String;
  ----------------------------------------------
  -- getFullName(Name) retrieves Name as a String -
  -- Receive: Nm, a Name.                      -
  -- PRE: Nm has been initialized.             -
  -- Return: a String representation of Nm.    -
  ----------------------------------------------
    function getFullName( Nm: in Name) return string;
  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: Nm has been initialized.             -
  -- Receive: Nm, a Name.                      -
  -- Output: Nm, to the screen.                -
  ----------------------------------------------
    procedure Put (TheName : in Name);

private
    NAME_SIZE : constant Positive := 8;

    type Name is
    record
        myFirst, 
        myMiddle, 
        MyLast : String(1..NAME_SIZE);
    end record;

end Name_Package;-- name_package.adb defines operations for the Name type.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Haim Hong
-- Date: March 17 2022
---------------------------------------------------------
with Name_Package; use Name_Package;
with Ada.Text_IO; use Ada.Text_IO;


package body Name_Package is

    ----------------------------------------------
    -- Init initializes a Name variable          
    -- Receive: Nm, the Name variable;          
    --          First, the first name;         
    --          Middle, the middle name;      
    --          Last, the last name.         
    -- Return: Nm, its fields set to First, 
    --               Middle, and Last.     
    ----------------------------------------------
    procedure Init(Nm: out Name;
                    First, Middle, Last : in String) is
    begin
        Nm.MyFirst := First;
        Nm.MyMiddle := Middle;
        Nm.MyLast := Last;
    end Init;
    ----------------------------------------------
    -- getFirst(Name) retrieves Name.myFirst        
    -- Receive: Nm, a Name.                      
    -- PRE: Nm has been initialized.            
    -- Return: Nm.myFirst.                     
    ----------------------------------------------
    function getFirst( Nm: in Name) return String is
    begin
        return Nm.MyFirst;
    end getFirst;
  ----------------------------------------------
  -- getMiddle(Name) retrieves Name as a String 
  -- Receive: Nm, a Name.        
  -- PRE: Nm has been initialized.
  -- Return: Nm.myMiddle. 
  ----------------------------------------------
    function getMiddle( Nm: in Name) return String is
    begin
        return Nm.MyMiddle;
    end getMiddle;
  ----------------------------------------------
  -- getLast(Name) retrieves Name.myLast       
  -- Receive: Nm, a Name.                    
  -- PRE: Nm has been initialized.            
  -- Return: Nm.myLast.                        
  ----------------------------------------------
    function getLast( Nm: in Name) return String is
    begin
        return Nm.MyLast;
    end getLast;
  ----------------------------------------------
  -- getFullName(Name) retrieves Name as a String -
  -- Receive: Nm, a Name.                      -
  -- PRE: Nm has been initialized.             -
  -- Return: a String representation of Nm.    -
  ----------------------------------------------
    function getFullName( Nm: in Name) return String is
    begin
        return Nm.MyFirst & " "
            & Nm.MyMiddle & " "
            & Nm.MyLast;
    end getFullName;
  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: Nm has been initialized.             -
  -- Receive: Nm, a Name.                      -
  -- Output: Nm, to the screen.                -
  ----------------------------------------------
    procedure Put (TheName : in Name) is

    begin
        Put(TheName.MyFirst);
        Put(TheName.MyMiddle);
        Put(TheName.myLast);
    end Put;

end Name_Package;-- name_tester.adb "test-drives" the Name type.
--
-- Begun by: Dr. Adams, CPSC 280, October 1999.
-- Completed by: Haim Hong
-- Date: March 17 2022
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;
with Name_Package; use Name_Package;

procedure name_tester is
  aName : Name_Package.Name;
begin
   Init(aName, "John    ", "Paul    ", "Jones   ");

   pragma Assert( getFirst(aName) = "John    ",
                   "getFirst() failed");
   pragma Assert( getMiddle(aName) = "Paul    ", 
                   "getMiddle() failed");
   pragma Assert( getLast(aName) = "Jones   ", 
                   "getLast() failed");
   pragma Assert( getFullName(aName) = "John     Paul     Jones   ",
                    "getFullName() failed");
   Put(aName); New_line;
   Put("All tests passed!"); New_line;
end name_tester;

]0;hh35@gold28: ~/cs214/lab/lab09/ada[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab09/ada[00m$ gnatmake name_tester.adb
x86_64-linux-gnu-gcc-7 -c name_tester.adb
x86_64-linux-gnu-gcc-7 -c name_package.adb
x86_64-linux-gnu-gnatbind-7 -x name_tester.ali
x86_64-linux-gnu-gnatlink-7 name_tester.ali
]0;hh35@gold28: ~/cs214/lab/lab09/ada[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab09/ada[00m$ gnatmake name_package.adb
]0;hh35@gold28: ~/cs214/lab/lab09/ada[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab09/ada[00m$ gnatmake name_package.adbb  ds
]0;hh35@gold28: ~/cs214/lab/lab09/ada[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab09/ada[00m$ gnatbind name_tester.ali
]0;hh35@gold28: ~/cs214/lab/lab09/ada[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab09/ada[00m$ gnatlink name_tester.ali
]0;hh35@gold28: ~/cs214/lab/lab09/ada[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab09/ada[00m$ ./name_ _tester
John    Paul    Jones   
All tests passed!
]0;hh35@gold28: ~/cs214/lab/lab09/ada[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab09/ada[00m$ exit

Script done on 2022-03-17 12:54:35-04:00 [COMMAND_EXIT_CODE="0"]
