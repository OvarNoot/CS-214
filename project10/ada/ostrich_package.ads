-- ostrich_package.ads gives Penguin-related declarations,
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

end Ostrich_package;