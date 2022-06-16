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
