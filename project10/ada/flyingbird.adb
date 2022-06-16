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

end flyingbird;