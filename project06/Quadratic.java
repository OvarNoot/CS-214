/*
    y = ax^2 + bx + c
    gets input of a,b, and c to compute roots of quadratic qeuations

    Haim Hong
    Feb  16
*/
import java.util.Scanner;
import java.lang.Math;

public class Quadratic
{
    public static void main(String[] args){
        Scanner keyboard = new Scanner(System.in);
        System.out.println("\nTo compute the roots of quadratice equation, enter a: ");
        Double a = keyboard.nextDouble(); // gets all the iupts for a b c to compute quadratic 

        System.out.println("\nEnter the b");
        Double b = keyboard.nextDouble();
        System.out.println("\nEnter the c");
        Double c = keyboard.nextDouble();
        String [] resultRoot = new String[2]; // creates new array
        if (quadratic(a, b, c, resultRoot)) // output only if it returns true to make sure it works
            System.out.println("\nThe root1 is " + resultRoot[0] + " and the root2 is " + resultRoot[1]);
    }
    public static boolean quadratic(double a, double b, double c, String[] result){
        if (a != 0) {
            double arg = Math.pow(b, 2.0) - 4 * a * c; // makes arg so will not have to write more for results
            if (arg >= 0) {
                result[0] = String.valueOf((-b + Math.sqrt(arg))/(2*a)); // computes the quadratic 
                result[1] = String.valueOf((-b - Math.sqrt(arg))/(2*a));
                return true;
            } else {
                System.out.println("\n*** quadraticRoots(): b^2 - 4ac is negative!"); // if arg is below 0 than print this out
                result = new String[2]; // reset array by making it new
                return false; // return false for it not to output anything
            }

        } else {
            System.out.println("\n*** QuadraticRoots(): a is zero!"); //if a is 0 then output this
            result = new String[2]; // reset array by making it new
            return false; // return false for it not to output anything
        }
    }
}