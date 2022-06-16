-- ostrich_package.adb gives ostrich-related definitions
--  by over-riding WalkingBird-related definitions.
--
-- Completed by: Haim Hong
-- Date: March 25 2022
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Ostrich_package is


 ----------------------------------------------------
 -- A Ostrich's Call (Over-rides Bird.Call())           -
 -- Receive: A_Ostrich, an Ostrich_Type.                   -
 -- Return: "Snork!"                                 -
 ----------------------------------------------------
  function Call(A_Ostrich : in Ostrich_Type) return String is
    begin
        return "Snork!";
    end Call;

 -----------------------------------------------------
 -- Determine type of a Ostrich                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Ostrich, an Ostrich_Type.                    -
 -- Return: "Ostrich".                                   -
 -----------------------------------------------------
    function Type_Name(A_Ostrich : in Ostrich_Type) return String is
    begin
        return "Ostrich";
    end Type_Name;
end Ostrich_package;