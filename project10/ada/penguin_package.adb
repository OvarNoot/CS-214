-- penguin_package.adb gives penguin-related definitions
--  by over-riding WalkingBIrd-related definitions.
--
-- Completed by: Haim Hong
-- Date: March 25 2022
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Penguin_package is


 ----------------------------------------------------
 -- A Penguin's Call (Over-rides Bird.Call())           -
 -- Receive: A_Penguin, an Penguin_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------
  function Call(A_Penguin : in Penguin_Type) return String is
    begin
        return "Huh-huh-huh-huuuuh!";
    end Call;

 -----------------------------------------------------
 -- Determine type of a Penguin                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Penguin, an Penguin_Type.                    -
 -- Return: "Penguin".                                   -
 -----------------------------------------------------
    function Type_Name(A_Penguin : in Penguin_Type) return String is
    begin
        return "Penguin";
    end Type_Name;
end Penguin_package;