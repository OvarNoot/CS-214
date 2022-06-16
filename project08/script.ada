Script started on 2022-03-10 16:18:33-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="92" LINES="24"]
]0;hh35@gold13: ~/cs214/project/project08[01;32mhh35@gold13[00m:[01;34m~/cs214/project/project08[00m$ cat name_) tester.adb
-- Aggregate Operations
-- Haim Hong
-- March 10 2022
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

  ----------------------------------------------
  -- setFirst(Name) sets New name for first    -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name, aFirst          -
  -- Return TheName with different firstName   -
  ----------------------------------------------
  procedure setFirst(TheName : in out Name; aFirst : in String) is
  begin
    TheName.MyFirst := aFirst; -- updates myFirst to new First
  end setFirst;

  ----------------------------------------------
  -- setMiddle(Name) sets New name for Middle  -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name, aMiddle         -
  -- Return TheName with different middleName  -
  ----------------------------------------------
  procedure setMiddle(TheName : in out Name; aMiddle : in String) is
  begin
    TheName.MyMiddle := aMiddle; -- updates myMiddle to new middle
  end setMiddle;

  ----------------------------------------------
  -- setFirst(Name) sets New name for Last     -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name, aLast           -
  -- Return TheName with different lastName    -
  ----------------------------------------------
  procedure setLast(TheName : in out Name; aLast : in String) is
  begin
    TheName.myLast := aLast; -- update myLast to new last
  end setLast;

  ----------------------------------------------
  -- lfmi(Name) gives name as last first middle initials -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name                  -
  -- Retruns Last First Middle initials        -
  ----------------------------------------------
  function lfmi (TheName : in Name)return String is
  begin
    return TheName.myLast & ", " & TheName.MyFirst & ", " & TheName.MyMiddle(1) & "."; -- Last, First, Middle Initial
  end lfmi;

  ----------------------------------------------
  -- readName(Name) reads the user inputs      -
  -- PRE: theName has been initialized. 
  -- Receive: theName, aName, user inputs in function -
  -- Returns the Name with new names from user inputs -
  ----------------------------------------------  
  procedure readName(TheName : in out Name) is
    input : String( 1..NAME_SIZE );
  begin
    Put("Enter First Name: ");
    Get(input); -- gets input
    TheName.MyFirst := input; -- puts that input to update names
    Put("Enter Middle Name: "); 
    Get(input); -- gets input
    TheName.MyMiddle := input; -- puts that input to update names
    Put("Enter Last Name: ");
    Get(input); -- gets input
    TheName.myLast := input; -- puts that input to update names
  end readName;
begin
  Init(aName, "John    ", "Paul    ", "Jones   ");

  pragma Assert( getFirst(aName) = "John    ", "getFirst() failed");
  pragma Assert( getMiddle(aName) = "Paul    ", "getMiddle() failed");
  pragma Assert( getLast(aName) = "Jones   ", "getLast() failed");
  pragma Assert( getFullName(aName) = "John     Paul     Jones   ", 
                    "getFullName() failed");



   Put(aName); New_line;

    -- Set the first middle and Last
  setFirst(aName, "Justin  ");
  setMiddle(aName, "Henry   ");
  setLast(aName, "Voss    ");
  -- check the first middle last
  pragma Assert( getFirst(aName) = "Justin  ", "getFirst() failed");
  pragma Assert( getMiddle(aName) = "Henry   ", "getMiddle() failed");
  pragma Assert( getLast(aName) = "Voss    ", "getLast() failed");
  
  
  -- check if lfmi correctly worked
  pragma Assert(lfmi(aName) = "Voss    , Justin  , H.", "lmfi() failed");
  put(lfmi(aName)); -- to check if correctly worked output for you
  New_Line;

  -- checking with the previous names for read Name assers
  Put_Line ("readName test using Justin Henry Voss");
  -- reads the name
  readName (aName);
  -- checking if all worked
  pragma Assert( getFirst(aName) = "Justin  ", "getFirst() failed");
  pragma Assert( getMiddle(aName) = "Henry   ", "getMiddle() failed");
  pragma Assert( getLast(aName) = "Voss    ", "getLast() failed");

  Put("All tests passed!"); New_line;

end name_tester;

]0;hh35@gold13: ~/cs214/project/project08[01;32mhh35@gold13[00m:[01;34m~/cs214/project/project08[00m$ ls
[0m[01;34mclojure[0m   [01;32mname_tester[0m      name_tester.ali  name_tester.o  script.ada
Makefile  name_tester.adb  NameTester.java  NameTester.rb  script.java
]0;hh35@gold13: ~/cs214/project/project08[01;32mhh35@gold13[00m:[01;34m~/cs214/project/project08[00m$ make clean
rm -f *.class *.o *.ali *~ name_tester
]0;hh35@gold13: ~/cs214/project/project08[01;32mhh35@gold13[00m:[01;34m~/cs214/project/project08[00m$ ls
[0m[01;34mclojure[0m  Makefile  name_tester.adb  NameTester.java  NameTester.rb  script.ada  script.java
]0;hh35@gold13: ~/cs214/project/project08[01;32mhh35@gold13[00m:[01;34m~/cs214/project/project08[00m$ make ada
gnatmake name_tester -gnata
x86_64-linux-gnu-gcc-7 -c -gnata name_tester.adb
x86_64-linux-gnu-gnatbind-7 -x name_tester.ali
x86_64-linux-gnu-gnatlink-7 name_tester.ali
]0;hh35@gold13: ~/cs214/project/project08[01;32mhh35@gold13[00m:[01;34m~/cs214/project/project08[00m$ ls
[0m[01;34mclojure[0m   [01;32mname_tester[0m      name_tester.ali  name_tester.o  script.ada
Makefile  name_tester.adb  NameTester.java  NameTester.rb  script.java
]0;hh35@gold13: ~/cs214/project/project08[01;32mhh35@gold13[00m:[01;34m~/cs214/project/project08[00m$ lsmake adals[Kmake cleanls[Kcat name_tester.adb[6P./name_testergnatmake name_tester.adb -gnata
gnatmake: "name_tester" up to date.
]0;hh35@gold13: ~/cs214/project/project08[01;32mhh35@gold13[00m:[01;34m~/cs214/project/project08[00m$ gnatmake name_tester.adb -gnatals[Kmake adals[Kgnatmake name_tester.adb -gnata[K./name_tester
John    Paul    Jones   
Voss    , Justin  , H.
readName test using Justin Henry Voss
Enter First Name: Justin  
Enter Middle Name: Henry   
Enter Last Name: Voss    
All tests passed!
]0;hh35@gold13: ~/cs214/project/project08[01;32mhh35@gold13[00m:[01;34m~/cs214/project/project08[00m$ exit

Script done on 2022-03-10 16:19:31-05:00 [COMMAND_EXIT_CODE="0"]
