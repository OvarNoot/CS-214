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

end Penguin_package;