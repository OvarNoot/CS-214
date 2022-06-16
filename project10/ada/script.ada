Script started on 2022-03-25 13:47:56-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="98" LINES="24"]
]0;hh35@gold28: ~/cs214/project/project10/ada[01;32mhh35@gold28[00m:[01;34m~/cs214/project/project10/ada[00m$ d cat bird_package.adb bird_package.a ds                                  *a .adb *.ads
-- bird_package.adb gives Bird-related definitions
--
-- Completed by: Haim Hong
-- Date: March 25 2022
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Bird_Package is


 ----------------------------------------------------
 -- initialization                                  -
 -- Receive: A_Bird, a Bird_Type;                   -
 --          Name, a String                         -
 -- Return: a Bird_Type in which My_Name = Name.    -
 ----------------------------------------------------
    procedure Init (A_Bird : out Bird_Type; Name : in String) is
    begin
        A_Bird.My_Name := Name;
    end Init;

 ----------------------------------------------------
 -- Name accessor                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: A_Bird.My_Name.                         -
 ----------------------------------------------------
    function Name(A_Bird : in Bird_Type) return String is
    begin
        return A_Bird.My_Name;
    end Name;

 ----------------------------------------------------
 -- A Bird's Call                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: a default bird-call ("Squawk!").        -
 ----------------------------------------------------
    function Call(A_Bird : in Bird_Type) return String is
    begin
        return "Squawwwwwwk!";
    end Call;

 ----------------------------------------------------
 -- Determine type of a Bird (for derived types)    -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "Bird".                                 -
 ----------------------------------------------------
    function Type_Name(A_Bird : in Bird_Type) return String is
    begin
        return "Bird";
    end Type_Name;
 ----------------------------------------------------
 -- A Bird's movement                               -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "Flew".                                 -
 ----------------------------------------------------
    function Movement(A_Bird : in Bird_Type) return String is
    begin
        return "flew";
    end Movement;
 ----------------------------------------------------
 -- Output a Bird                                   -
 -- Receive: A_Bird, a Bird or subclass of Bird.    -
 -- Output: Everything known about A_Bird           -
 ----------------------------------------------------
    procedure Put(A_Bird : in Bird_Type'Class) is
    begin
        Put( Name(A_Bird));
        Put ( ' ');
        Put (Type_Name(A_Bird));
        Put ( " just ");
        Put (Movement(A_Bird));
        Put(" and said ");
        Put( Call(A_Bird));
    end put;
end Bird_Package;

-- birds.adb tests our Birds type hierarchy.
--
-- Completed by: Haim Hong
-- Date: March 25 2022
-----------------------------------------------------

with Bird_Package, 
      Duck_Package, 
      Goose_Package, 
      Owl_Package,
      Penguin_package,
      Ostrich_package,
      Kiwi_package,
      Ada.Text_IO;
use Bird_Package,
      Duck_Package, 
      Goose_Package,
      Owl_Package,
      Penguin_package,
      Ostrich_package,
      Kiwi_package,
      Ada.Text_IO;

 
procedure Birds is

 Bird1 : Bird_Type;       -- base class
 Bird2 : Duck_Type;       -- derived class 1
 Bird3 : Goose_Type;      -- derived class 2
 Bird4 : Owl_Type;        -- derived class 3
 Bird5 : Penguin_Type;    -- derived class 4
 Bird6 : Ostrich_Type;    -- derived class 5
 Bird7 : Kiwi_Type;       -- derived calss 6

begin
   Put("Welcome to the Bird Park!");
   New_Line;
   Init(Bird1, "Tweety");
   Put(Bird1); New_Line;

   Init(Bird2, "Donald");
   Put(Bird2); New_Line;

   Init(Bird3, "Mother");
   Put(Bird3); New_Line;

   Init(Bird4, "Woodsy");
   Put(Bird4); New_Line;

   Init(Bird5, "Peter ");
   Put(Bird5); New_Line;

   Init (Bird6, "Comand");
   Put(Bird6); New_Line;

   Init (Bird7, "Fruit ");
   Put(Bird7); New_Line;

 New_Line;
end Birds;

-- duck_package.adb gives Duck-related definitions
--  by over-riding FlyingBird-related definitions.
--
-- Completed by: Haim Hong
-- Date: March 25 2022
---------------------------------------------------
with Ada.Text_IO;
use Ada.Text_IO;

package body Duck_Package is

 ----------------------------------------------------
 -- A Duck's Call (Over-rides Bird.Call())          -
 -- Receive: A_Duck, a Duck_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
    function Call(A_Duck : in Duck_Type) return String is
    begin
        return "Quack!";
    end Call;

 ------------------------------------------------------------
 -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
 -- Receive: A_Duck, a Duck_Type.                          -
 -- Return: "Duck".                                        -
 -----------------------------------------------------------
    function Type_Name(A_Duck : in Duck_Type) return String is
    begin
        return "Duck";
    end Type_Name;

end Duck_Package;
-- flyingbird.adb gives flying-related definitions
--  by over-riding Bird-related definitions.
--
-- Completed by: Haim Hong
-- Date: March 25 2022
---------------------------------------------------

package body flyingbird is
 ----------------------------------------------------
 -- A Movement()        -
 -- Receive: A_Bird, a flying type                    -
 -- Return: "flew"                                 -
 ----------------------------------------------------
    function Movement(A_Bird : in Flying_type) return String is
    begin
        return "flew";
    end Movement;

end flyingbird;-- goose_package.adb gives Goose-related definitions
--  by over-riding FlyingBird-related definitions.
--
-- Completed by: Haim Hong
-- Date: March 25 2022
---------------------------------------------------

package body Goose_Package is


 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose_Type.                 -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
    function Call(A_Goose : in Goose_Type) return String is
    begin
        return "Honk!";
    end Call;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose_Type.                  -
 -- Return: "Goose".                                 -
 -----------------------------------------------------
    function Type_Name(A_Goose : in Goose_Type) return String is
    begin
        return "Goose";
    end Type_Name;

end Goose_Package;
-- kiwi_package.adb gives kiwi-related definitions
--  by over-riding WalkingBIrd-related definitions.
--
-- Completed by: Haim Hong
-- Date: March 25 2022
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Kiwi_package is


 ----------------------------------------------------
 -- A Kiwi's Call (Over-rides Bird.Call())           -
 -- Receive: A_Kiwi, an Kiwi_Type.                   -
 -- Return: "Phrrrrrrrr!"                                 -
 ----------------------------------------------------
  function Call(A_Kiwi : in Kiwi_Type) return String is
    begin
        return "Phrrrrrrrr!";
    end Call;

 -----------------------------------------------------
 -- Determine type of a Kiwi                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Kiwi, an Kiwi_Type.                    -
 -- Return: "Kiwi".                                   -
 -----------------------------------------------------
    function Type_Name(A_Kiwi : in Kiwi_Type) return String is
    begin
        return "Kiwi";
    end Type_Name;
end Kiwi_package;-- ostrich_package.adb gives ostrich-related definitions
--  by over-riding WalkingBird-related definitions.
--
-- Completed by: Haim Hong
-- Date: March 25 2022
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Ostrich_package is


 ----------------------------------------------------
 -- A Ostrich's Call (Over-rides Bird.Call())           -
 -- Receive: A_Ostrich, an Ostrich_Type.                   -
 -- Return: "Snork!"                                 -
 ----------------------------------------------------
  function Call(A_Ostrich : in Ostrich_Type) return String is
    begin
        return "Snork!";
    end Call;

 -----------------------------------------------------
 -- Determine type of a Ostrich                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Ostrich, an Ostrich_Type.                    -
 -- Return: "Ostrich".                                   -
 -----------------------------------------------------
    function Type_Name(A_Ostrich : in Ostrich_Type) return String is
    begin
        return "Ostrich";
    end Type_Name;
end Ostrich_package;-- owl_package.adb gives Owl-related definitions
--  by over-riding FlyingBird-related definitions.
--
-- Completed by: Haim Hong
-- Date: March 25 2022
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Owl_Package is


 ----------------------------------------------------
 -- A Owl's Call (Over-rides Bird.Call())           -
 -- Receive: An_Owl, an Owl_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------
  function Call(An_Owl : in Owl_Type) return String is
    begin
        return "Hoo-Hoo-Hooooo!";
    end Call;

 -----------------------------------------------------
 -- Determine type of a Owl                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Owl, an Owl_Type.                    -
 -- Return: "Owl".                                   -
 -----------------------------------------------------
    function Type_Name(An_Owl : in Owl_Type) return String is
    begin
        return "Owl";
    end Type_Name;
end Owl_Package;
-- penguin_package.adb gives penguin-related definitions
--  by over-riding WalkingBIrd-related definitions.
--
-- Completed by: Haim Hong
-- Date: March 25 2022
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Penguin_package is


 ----------------------------------------------------
 -- A Penguin's Call (Over-rides Bird.Call())           -
 -- Receive: A_Penguin, an Penguin_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------
  function Call(A_Penguin : in Penguin_Type) return String is
    begin
        return "Huh-huh-huh-huuuuh!";
    end Call;

 -----------------------------------------------------
 -- Determine type of a Penguin                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Penguin, an Penguin_Type.                    -
 -- Return: "Penguin".                                   -
 -----------------------------------------------------
    function Type_Name(A_Penguin : in Penguin_Type) return String is
    begin
        return "Penguin";
    end Type_Name;
end Penguin_package;-- flyingbird.adb gives flying-related definitions
--  by over-riding Bird-related definitions.
--
-- Completed by: Haim Hong
-- Date: March 25 2022
---------------------------------------------------

package body walkingbird is
 ----------------------------------------------------
 -- A Movement()        -
 -- Receive: A_Bird, a flying type                    -
 -- Return: "walked"                                 -
 ----------------------------------------------------
    function Movement(A_Bird : in Walking_Type) return String is
    begin
        return "walked";
    end Movement;

end walkingbird;-- bird_package.ads gives Bird-related declarations
--
-- Completed by: Haim Hong
-- Date: March 25 2022
---------------------------------------------------

package Bird_Package is

    type Bird_Type is tagged private;


 ----------------------------------------------------
 -- initialization                                  -
 -- Receive: A_Bird, a Bird_Type;                   -
 --          Name, a String                         -
 -- Return: a Bird_Type whose My_Name = Name.       -
 ----------------------------------------------------
procedure Init (A_Bird : out Bird_Type; Name : in String);
 ----------------------------------------------------
 -- Name accessor                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: A_Bird.My_Name.                         -
 ----------------------------------------------------
function Name(A_Bird : in Bird_Type) return String;
 ----------------------------------------------------
 -- A Bird's Call                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: a default bird-call ("Squawk!").        -
 ----------------------------------------------------
function Call(A_Bird : in Bird_Type) return String;
 ----------------------------------------------------
 -- Determine type of a Bird (for derived types)    -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "Bird".                                 -
 ----------------------------------------------------
function Type_Name(A_Bird : in Bird_Type) return String;
 ----------------------------------------------------
 -- Output a Bird                                   -
 -- Receive: A_Bird, a Bird or subclass of Bird.    -
 -- Output: Everything known about A_Bird           -
 ----------------------------------------------------
procedure Put(A_Bird : in Bird_Type'Class);
 ----------------------------------------------------
 -- A Bird's movement                               -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "Flew".                                 -
 ----------------------------------------------------
function Movement(A_Bird : in Bird_Type) return String; 


private
    type Bird_Type is
        tagged record
            My_Name : String(1..6);
        end record;
end Bird_Package;
-- duck_package.ads gives Duck-related declarations,
--
--  and derives Duck from FlyingBird.
-- Completed by: Haim Hong
-- Date: March 25 2022
---------------------------------------------------
with flyingbird; use flyingbird;

package Duck_Package is

    type Duck_Type is new Flying_type with private;
 ----------------------------------------------------
 -- A Duck's Call (Over-rides Bird.Call())          -
 -- Receive: A_Duck, a Duck_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
    function Call(A_Duck : in Duck_Type) return String;

 ------------------------------------------------------------
 -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
 -- Receive: A_Duck, a Duck_Type.                          -
 -- Return: "Duck".                                        -
 -----------------------------------------------------------
    function Type_Name(A_Duck : in Duck_Type) return String;
private
    type Duck_Type is new Flying_type with
        record
            null;
        end record;
end Duck_Package;
-- flyingbird.ads gives flying-related definitions
--  by over-riding Bird-related definitions.
--
-- Completed by: Haim Hong
-- Date: March 25 2022
---------------------------------------------------

with Bird_Package; use Bird_Package;

package flyingbird is

 type Flying_type is new Bird_Type with private;
 ----------------------------------------------------
 -- A Movement()        -
 -- Receive: A_Bird, a flying type                    -
 -- Return: "flew"                                 -
 ----------------------------------------------------
function Movement(A_Bird : in Flying_type) return String;


private
    type Flying_type is new Bird_Type with
        record
            null;
        end record;

end flyingbird;-- goose_package.ads gives Goose-related declarations,
--
--  and derives Goose from FlyingBird.
-- Completed by: Haim Hong
-- Date: March 25 2022
---------------------------------------------------

with flyingbird; use flyingbird;

package Goose_Package is

 type Goose_Type is new Flying_type with private;


 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose.                      -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
    function Call(A_Goose : in Goose_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose.                       -
 -- Return: "Goose".                                 -
 -----------------------------------------------------
    function Type_Name(A_Goose : in Goose_Type) return String;

private
    type Goose_Type is new Flying_type with
        record
            null;
        end record;

end Goose_Package;
-- kiwi_package.ads gives kiwi-related declarations,
--
--  and derives kiwi from WalkingBIrd.
-- Completed by: Haim Hong
-- Date: March 25 2022
---------------------------------------------------

with walkingbird; use walkingbird;

package Kiwi_package is

 type Kiwi_Type is new Walking_Type with private;


 ----------------------------------------------------
 -- A Kiwi's Call (Over-rides Bird.Call())           -
 -- Receive: A_Kiwi, an Kiwi_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------
    function Call(A_Kiwi : in Kiwi_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Kiwi                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Ostrich, an Kiwi_Type.                    -
 -- Return: "Ostrich".                                   -
 -----------------------------------------------------
    function Type_Name(A_Kiwi : in Kiwi_Type) return String;

private
    type Kiwi_Type is new Walking_Type with
        record
            null;
        end record;

end Kiwi_package;-- ostrich_package.ads gives Penguin-related declarations,
--
--  and derives Penguin from WalkingBird.
-- Completed by: Haim Hong
-- Date: March 25 2022
---------------------------------------------------

with walkingbird; use walkingbird;

package Ostrich_package is

 type Ostrich_Type is new Walking_Type with private;


 ----------------------------------------------------
 -- A Ostrich's Call (Over-rides Bird.Call())           -
 -- Receive: A_Ostrich, an Ostrich_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------
    function Call(A_Ostrich : in Ostrich_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Ostrich                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Ostrich, an Ostrich_Type.                    -
 -- Return: "Ostrich".                                   -
 -----------------------------------------------------
    function Type_Name(A_Ostrich : in Ostrich_Type) return String;

private
    type Ostrich_Type is new Walking_Type with
        record
            null;
        end record;

end Ostrich_package;-- owl_package.ads gives Owl-related declarations,
--  and derives Owl from FlyingBird.
--
-- Completed by: Haim Hong
-- Date: March 25 2022
---------------------------------------------------

with flyingbird; use flyingbird;

package Owl_Package is

type Owl_Type is new Flying_type with private;
 ----------------------------------------------------
 -- A Owl's Call (Over-rides Bird.Call())           -
 -- Receive: An_Owl, an Owl_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------
  function Call(An_Owl : in Owl_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Owl                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Owl, an Owl_Type.                    -
 -- Return: "Owl".                                   -
 -----------------------------------------------------
    function Type_Name(An_Owl : in Owl_Type) return String;
private
    type Owl_Type is new Flying_type with
        record
            null;
        end record;

end Owl_Package;
-- penguin_package.ads gives Penguin-related declarations,
--
--  and derives Penguin from WalkingBIrd.
-- Completed by: Haim Hong
-- Date: March 25 2022
---------------------------------------------------

with walkingbird; use walkingbird;

package Penguin_package is

 type Penguin_Type is new Walking_Type with private;


 ----------------------------------------------------
 -- A Penguin's Call (Over-rides Bird.Call())           -
 -- Receive: A_Penguin, an Penguin_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------
    function Call(A_Penguin : in Penguin_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Penguin                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Penguin, an Penguin_Type.                    -
 -- Return: "Penguin".                                   -
 -----------------------------------------------------
    function Type_Name(A_Penguin : in Penguin_Type) return String;

private
    type Penguin_Type is new Walking_Type with
        record
            null;
        end record;

end Penguin_package;-- flyingbird.ads gives flying-related definitions
--  by over-riding Bird-related definitions.
--
-- Completed by: Haim Hong
-- Date: March 25 2022
---------------------------------------------------

with Bird_Package; use Bird_Package;

package walkingbird is

 type Walking_Type is new Bird_Type with private;
 ----------------------------------------------------
 -- A Movement()        -
 -- Receive: A_Bird, a flying type                    -
 -- Return: "walked"                                 -
 ----------------------------------------------------
function Movement(A_Bird : in Walking_Type) return String;


private
    type Walking_Type is new Bird_Type with
        record
            null;
        end record;

end walkingbird;]0;hh35@gold28: ~/cs214/project/project10/ada[01;32mhh35@gold28[00m:[01;34m~/cs214/project/project10/ada[00m$ gnatmake d birds.adb
x86_64-linux-gnu-gcc-7 -c birds.adb
x86_64-linux-gnu-gcc-7 -c bird_package.adb
x86_64-linux-gnu-gcc-7 -c duck_package.adb
x86_64-linux-gnu-gcc-7 -c goose_package.adb
x86_64-linux-gnu-gcc-7 -c kiwi_package.adb
x86_64-linux-gnu-gcc-7 -c ostrich_package.adb
x86_64-linux-gnu-gcc-7 -c owl_package.adb
x86_64-linux-gnu-gcc-7 -c penguin_package.adb
x86_64-linux-gnu-gcc-7 -c flyingbird.adb
x86_64-linux-gnu-gcc-7 -c walkingbird.adb
x86_64-linux-gnu-gnatbind-7 -x birds.ali
x86_64-linux-gnu-gnatlink-7 birds.ali
]0;hh35@gold28: ~/cs214/project/project10/ada[01;32mhh35@gold28[00m:[01;34m~/cs214/project/project10/ada[00m$ gnatmake birds.adb
gnatmake: "birds" up to date.
]0;hh35@gold28: ~/cs214/project/project10/ada[01;32mhh35@gold28[00m:[01;34m~/cs214/project/project10/ada[00m$ ./birds
Welcome to the Bird Park!
Tweety Bird just flew and said Squawwwwwwk!
Donald Duck just flew and said Quack!
Mother Goose just flew and said Honk!
Woodsy Owl just flew and said Hoo-Hoo-Hooooo!
Peter  Penguin just walked and said Huh-huh-huh-huuuuh!
Comand Ostrich just walked and said Snork!
Fruit  Kiwi just walked and said Phrrrrrrrr!

]0;hh35@gold28: ~/cs214/project/project10/ada[01;32mhh35@gold28[00m:[01;34m~/cs214/project/project10/ada[00m$ exit

Script done on 2022-03-25 13:50:13-04:00 [COMMAND_EXIT_CODE="0"]
