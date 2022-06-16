Script started on 2022-02-17 17:05:20-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="190" LINES="24"]
]0;hh35@gold18: ~/cs214/project/project06[01;32mhh35@gold18[00m:[01;34m~/cs214/project/project06[00m$ d cat quadratic.clj   adb
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
end quadratic;]0;hh35@gold18: ~/cs214/project/project06[01;32mhh35@gold18[00m:[01;34m~/cs214/project/project06[00m$ gnatmake quadratic
x86_64-linux-gnu-gcc-7 -c quadratic.adb
x86_64-linux-gnu-gnatbind-7 -x quadratic.ali
x86_64-linux-gnu-gnatlink-7 quadratic.ali
]0;hh35@gold18: ~/cs214/project/project06[01;32mhh35@gold18[00m:[01;34m~/cs214/project/project06[00m$ ./gqu   qud adratic
Type value of a: 1
Type value of b: 4
Type value of c: 3
The Root1 is -1.00000E+00, the Root2 is -3.00000E+00
]0;hh35@gold18: ~/cs214/project/project06[01;32mhh35@gold18[00m:[01;34m~/cs214/project/project06[00m$ ./quadratic
Type value of a: 0
Type value of b: 0
Type value of c: 0
*** QuadraticRoots(): a is zero!
]0;hh35@gold18: ~/cs214/project/project06[01;32mhh35@gold18[00m:[01;34m~/cs214/project/project06[00m$ ./quadratic
Type value of a: 1
Type value of b: 1
Type value of c: 1
*** quadraticRoots(): b^2 - 4ac is negative!
]0;hh35@gold18: ~/cs214/project/project06[01;32mhh35@gold18[00m:[01;34m~/cs214/project/project06[00m$ exit

Script done on 2022-02-17 17:06:38-05:00 [COMMAND_EXIT_CODE="0"]
