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
