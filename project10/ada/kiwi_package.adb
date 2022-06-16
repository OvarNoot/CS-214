-- kiwi_package.adb gives kiwi-related definitions
--  by over-riding WalkingBIrd-related definitions.
--
-- Completed by: Haim Hong
-- Date: March 25 2022
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Kiwi_package is


 ----------------------------------------------------
 -- A Kiwi's Call (Over-rides Bird.Call())           -
 -- Receive: A_Kiwi, an Kiwi_Type.                   -
 -- Return: "Phrrrrrrrr!"                                 -
 ----------------------------------------------------
  function Call(A_Kiwi : in Kiwi_Type) return String is
    begin
        return "Phrrrrrrrr!";
    end Call;

 -----------------------------------------------------
 -- Determine type of a Kiwi                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Kiwi, an Kiwi_Type.                    -
 -- Return: "Kiwi".                                   -
 -----------------------------------------------------
    function Type_Name(A_Kiwi : in Kiwi_Type) return String is
    begin
        return "Kiwi";
    end Type_Name;
end Kiwi_package;