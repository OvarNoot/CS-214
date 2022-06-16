-- owl_package.ads gives Owl-related declarations,
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
