/*
    Computes the area of a rectangle

    Inputs the width and length of rectangle
    output the area of the rectangle
    Haim Hong
    Date: Jan 14 2022
*/
import java.util.Scanner;

public class RectangleArea {
    public static double rectangleArea(double w, double l){ // computes the area of rectangle given
        return w * l;
    }
public static void main(String[] args){
        // prompt for radius
        System.out.println("\n\nTo compute the area of a rectangle,");
        System.out.print(" enter its width: ");
    
        // Create a connection named keyboard to standard in
        Scanner keyboard = new Scanner(System.in);
    
        //Get the number of width from the user
        double width = keyboard.nextDouble();

        System.out.print(" enter its length: ");
        //Get the number of length from the user
        double length = keyboard.nextDouble();
    
        // output area
        System.out.println("\nThe area is " + rectangleArea(width, length) + "\n");
        System.out.printf("The area is %f\n\n", rectangleArea(width, length));
        System.out.printf("The area is %.15f\n\n", rectangleArea(width, length));
    }
}