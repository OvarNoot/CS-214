-- flyingbird.ads gives flying-related definitions
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

end walkingbird;