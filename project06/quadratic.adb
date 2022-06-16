--
-- gets a b c 
-- outputs the computed roots of quadratic equation
--
-- Haim Hong
-- Feb 17
--
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed, Ada.Numerics.Elementary_Functions, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed, Ada.Numerics.Elementary_Functions, Ada.Float_Text_IO;

procedure quadratic is
    a, b, c, Root1, Root2 : Float; -- declare variables

    -- gets three inputs and out the two roots
    procedure quadraticeq(a: in Float; b: in Float; c: in Float; roots1: out Float; roots2: out Float) is 
        
        args : Float;
        begin
            if a /= 0.0 then -- check if its not 0
                args := (b** 2.0) - (4.0 * a * c); -- then compute args
                if args >= 0.0 then -- if it aint 0
                    roots1 := (-b + Sqrt(args))/(2.0 * a); -- compute the roots
                    roots2 := (-b - Sqrt(args))/(2.0 * a);
                else
                    Put_Line ("*** quadraticRoots(): b^2 - 4ac is negative!"); -- if arg is negative outputs
                    roots1 := 0.0; -- resets roots
                    roots2 := 0.0;
                end if;
            else 
                Put_Line ("*** QuadraticRoots(): a is zero!"); -- if is 0 than output this
                roots1 := 0.0; -- resets roots
                roots2 := 0.0;
            end if;
        end quadraticeq;

begin
    Put ("Type value of a: "); -- printing string and gets input from user
    Get(a);
    Put("Type value of b: ");
    Get(b);
    Put("Type value of c: ");
    Get(c);
    quadraticeq(a, b, c, Root1, Root2);

    if (Root1 /= 0.0 and Root2 /= 0.0) then -- check if root1 and root2 is not 0
        Put("The Root1 is "); -- outputing the restuls
        Put(Root1);
        PUt(", the Root2 is ");
        Put(Root2);
    end if;
end quadratic;