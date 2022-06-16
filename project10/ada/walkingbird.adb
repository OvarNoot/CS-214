-- flyingbird.adb gives flying-related definitions
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

end walkingbird;