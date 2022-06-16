Script started on 2022-02-04 15:07:38-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="156" LINES="24"]
]0;hh35@gold17: ~/cs214/project/project04[01;32mhh35@gold17[00m:[01;34m~/cs214/project/project04[00m$ cat NFactorial.java
/* 
 * Outputs the factorial of number that use has inputed
 * 
 * Completed by: Haim Hong
 * Feb 3 2022
 ********************************************************/
import java.util.Scanner; 		// Get input

class NFactorial{

  public static void main(String[] args){
    Scanner keyboard = new Scanner(System.in); // scanners for input
    System.out.println("Enter the number to compute the factorial of it: "); // outputs string

    double n;
    n = keyboard.nextDouble(); // gets input n factorial
    System.out.println(factorial(n)); // outputs the factorial of n
}
public static double factorial(double n){ // function to compute factorial of n
    double answer = 1.0;
    for (double i = 2; i <= n;i++){ // loop until reaches the n while incrementing by 1
        answer *= i; // multiply answer by i 
    }
        return answer; // returns the result
    }
}
]0;hh35@gold17: ~/cs214/project/project04[01;32mhh35@gold17[00m:[01;34m~/cs214/project/project04[00m$ javac 0 -deprecation NFactorial.java
]0;hh35@gold17: ~/cs214/project/project04[01;32mhh35@gold17[00m:[01;34m~/cs214/project/project04[00m$ java NFA AC  actorial.j  
Enter the number to compute the factorial of it: 
2 3
6.0
]0;hh35@gold17: ~/cs214/project/project04[01;32mhh35@gold17[00m:[01;34m~/cs214/project/project04[00m$ java NFactorial
Enter the number to compute the factorial of it: 
5
120.0
]0;hh35@gold17: ~/cs214/project/project04[01;32mhh35@gold17[00m:[01;34m~/cs214/project/project04[00m$ java NFactorial
Enter the number to compute the factorial of it: 
8
40320.0
]0;hh35@gold17: ~/cs214/project/project04[01;32mhh35@gold17[00m:[01;34m~/cs214/project/project04[00m$ java NFactorial
Enter the number to compute the factorial of it: 
100 
3628800.0
]0;hh35@gold17: ~/cs214/project/project04[01;32mhh35@gold17[00m:[01;34m~/cs214/project/project04[00m$ exit

Script done on 2022-02-04 15:08:16-05:00 [COMMAND_EXIT_CODE="0"]
