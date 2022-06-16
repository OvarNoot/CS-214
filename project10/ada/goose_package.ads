-- goose_package.ads gives Goose-related declarations,
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
