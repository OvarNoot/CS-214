Script started on 2022-03-08 16:40:36-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="129" LINES="24"]
]0;hh35@gold17: ~/cs214/lab/lab08[01;32mhh35@gold17[00m:[01;34m~/cs214/lab/lab08[00m$ make    ls
 [0m[01;34mclojure[0m       Makefile     name_tester.adb    NameTester.java   script.ada
'#Makefile#'   Name.class   NameTester.class   NameTester.rb     script.java
]0;hh35@gold17: ~/cs214/lab/lab08[01;32mhh35@gold17[00m:[01;34m~/cs214/lab/lab08[00m$ make clean
rm -f *.class *.o *.ali *~ name_tester
]0;hh35@gold17: ~/cs214/lab/lab08[01;32mhh35@gold17[00m:[01;34m~/cs214/lab/lab08[00m$ ls
 [0m[01;34mclojure[0m  '#Makefile#'   Makefile   name_tester.adb   NameTester.java   NameTester.rb   script.ada   script.java
]0;hh35@gold17: ~/cs214/lab/lab08[01;32mhh35@gold17[00m:[01;34m~/cs214/lab/lab08[00m$ make ada
gnatmake name_tester -gnata
x86_64-linux-gnu-gcc-7 -c -gnata name_tester.adb
x86_64-linux-gnu-gnatbind-7 -x name_tester.ali
x86_64-linux-gnu-gnatlink-7 name_tester.ali
]0;hh35@gold17: ~/cs214/lab/lab08[01;32mhh35@gold17[00m:[01;34m~/cs214/lab/lab08[00m$ ls
 [0m[01;34mclojure[0m       Makefile      name_tester.adb   NameTester.java   NameTester.rb   script.java
'#Makefile#'   [01;32mname_tester[0m   name_tester.ali   name_tester.o     script.ada
]0;hh35@gold17: ~/cs214/lab/lab08[01;32mhh35@gold17[00m:[01;34m~/cs214/lab/lab08[00m$ cat name_tester.da  adb
-- namer.adb "test-drives" the Name type.
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Haim Hong
-- Date: March 8 2022
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure name_tester is

  NAME_SIZE : Integer := 8;

  type Name is -- record type for Name
  record
    MyFirst : String( 1..NAME_SIZE );
    MyMiddle : String( 1..NAME_SIZE );
    myLast : String ( 1..NAME_SIZE );
  end record;

  aName : Name ;

  ----------------------------------------------
  -- Init initializes a Name variable          -
  -- Receive: theName, the Name variable;      -
  --          First, the first name;           -
  --          Middle, the middle name;         -
  --          Last, the last name.             -
  -- Return: theName, its fields set to First, -
  --               Middle, and Last.           -
  ----------------------------------------------
  procedure Init (TheName : out Name; First, Middle, Last : in String) is

  begin
    TheName.MyFirst := First;
    TheName.MyMiddle := Middle;
    TheName.MyLast := Last;
  end Init;

  ----------------------------------------------
  -- getFirst(Name) retrieves Name.myFirst        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myFirst.                  -
  ----------------------------------------------
  function getFirst(TheName : in Name) return String is
  begin
    return TheName.MyFirst;
  end getFirst;
  ----------------------------------------------
  -- getMiddle(Name) retrieves Name.myMiddle        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myMiddle.                  -
  ----------------------------------------------
  function getMiddle(TheName : in Name) return String is
  begin
    return TheName.MyMiddle;
  end getMiddle;
  ----------------------------------------------
  -- getLast(Name) retrieves Name.myLast        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myLast.                  -
  ----------------------------------------------
  function getLast(TheName : in Name) return String is
  begin
    return TheName.MyLast;
  end getLast;

  -----------------------------------------------
  -- getFullName(Name) retrieves Name as a String  -
  -- Receive: theName, a Name.                  -
  -- PRE: theName has been initialized.         -
  -- Return: a String representation of theName -
  -----------------------------------------------
  function getFullName(TheName : in Name) return String is
  begin
    return TheName.MyFirst & ' ' & TheName.MyMiddle & ' ' & TheName.myLast;
  end  getFullName;

  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- Output: theName, to the screen.           -
  ----------------------------------------------
  procedure Put (TheName : in Name) is

  begin
    Put(TheName.MyFirst);
    Put(TheName.MyMiddle);
    Put(TheName.myLast);
  end Put;

begin
  Init(aName, "John    ", "Paul    ", "Jones   ");

  pragma Assert( getFirst(aName) = "John    ", "getFirst() failed");
  pragma Assert( getMiddle(aName) = "Paul    ", "getMiddle() failed");
  pragma Assert( getLast(aName) = "Jones   ", "getLast() failed");
  pragma Assert( getFullName(aName) = "John     Paul     Jones   ", 
                    "getFullName() failed");

   Put(aName); New_line;
   Put("All tests passed!"); New_line;

end name_tester;

]0;hh35@gold17: ~/cs214/lab/lab08[01;32mhh35@gold17[00m:[01;34m~/cs214/lab/lab08[00m$ d gmat,ale ma,e+s               gnatmake name_tesr er   ster.adb -gnata
gnatmake: "name_tester" up to date.
]0;hh35@gold17: ~/cs214/lab/lab08[01;32mhh35@gold17[00m:[01;34m~/cs214/lab/lab08[00m$ ./name_tester.adb
bash: ./name_tester.adb: Permission denied
]0;hh35@gold17: ~/cs214/lab/lab08[01;32mhh35@gold17[00m:[01;34m~/cs214/lab/lab08[00m$ ./name_tester
John    Paul    Jones   
All tests passed!
]0;hh35@gold17: ~/cs214/lab/lab08[01;32mhh35@gold17[00m:[01;34m~/cs214/lab/lab08[00m$ exit

Script done on 2022-03-08 16:45:34-05:00 [COMMAND_EXIT_CODE="0"]
