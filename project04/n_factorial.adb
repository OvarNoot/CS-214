-- outputs the facotiral of n that user has inputed
-- Haim Hong
-- Date: Feb 4 2022
------------------------
with Ada.Text_IO, Ada.Float_Text_IO, Ada.Integer_Text_IO, Ada.Numerics.Elementary_Functions;
use  Ada.Text_IO, Ada.Float_Text_IO, Ada.Integer_Text_IO, Ada.Numerics.Elementary_Functions;

procedure n_factorial is
    n, i, answer : Integer; -- declares variables

    function factorial (n : Integer ) return Integer is -- functiong to return int
        begin
            i := 2;
            answer := 1;
            for i in 2..n loop -- loop until reached n
                answer := answer * i; -- multiply by i while it incremet by one reach loop
            end loop;
            return answer; -- return the result
        end factorial;
begin
    Put("Enter the number to compute the factorial of it: "); -- output string
    Get(n); -- gets user input

    Put ("The Factorial of "); -- output string
    Put(n); -- output the n that user typed
    Put(" is ");
    Put(factorial(n)); -- calling to output the result
end n_factorial;

