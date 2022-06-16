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

