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

end flyingbird;