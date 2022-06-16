Script started on 2022-02-04 15:10:07-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="156" LINES="24"]
]0;hh35@gold17: ~/cs214/project/project04[01;32mhh35@gold17[00m:[01;34m~/cs214/project/project04[00m$ script      cat n_factorial.adb
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

]0;hh35@gold17: ~/cs214/project/project04[01;32mhh35@gold17[00m:[01;34m~/cs214/project/project04[00m$ gnatmake n_factorial
gnatmake: "n_factorial" up to date.
]0;hh35@gold17: ~/cs214/project/project04[01;32mhh35@gold17[00m:[01;34m~/cs214/project/project04[00m$ ./n_factorial
Enter the number to compute the factorial of it: 3
The Factorial of           3 is           6
]0;hh35@gold17: ~/cs214/project/project04[01;32mhh35@gold17[00m:[01;34m~/cs214/project/project04[00m$ ./n_factorial
Enter the number to compute the factorial of it: 5
The Factorial of           5 is         120
]0;hh35@gold17: ~/cs214/project/project04[01;32mhh35@gold17[00m:[01;34m~/cs214/project/project04[00m$ ./n_factorial
Enter the number to compute the factorial of it: 8
The Factorial of           8 is       40320
]0;hh35@gold17: ~/cs214/project/project04[01;32mhh35@gold17[00m:[01;34m~/cs214/project/project04[00m$ ./n_factorial
Enter the number to compute the factorial of it: 10
The Factorial of          10 is     3628800
]0;hh35@gold17: ~/cs214/project/project04[01;32mhh35@gold17[00m:[01;34m~/cs214/project/project04[00m$ exit

Script done on 2022-02-04 15:10:53-05:00 [COMMAND_EXIT_CODE="0"]
