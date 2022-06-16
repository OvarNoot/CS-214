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

end Kiwi_package;