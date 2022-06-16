Script started on 2022-01-17 16:53:30-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="98" LINES="24"]
]0;hh35@remotel1: ~/cs214/project/project01[01;32mhh35@remotel1[00m:[01;34m~/cs214/project/project01[00m$ cat rect    REctan     ectangleArea.java
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
}]0;hh35@remotel1: ~/cs214/project/project01[01;32mhh35@remotel1[00m:[01;34m~/cs214/project/project01[00m$ javac -deprecation RectangleArea.java
]0;hh35@remotel1: ~/cs214/project/project01[01;32mhh35@remotel1[00m:[01;34m~/cs214/project/project01[00m$ J java C RectangleArea


To compute the area of a rectangle,
 enter its width: 4.5
 enter its length: 3.5

The area is 15.75

The area is 15.750000

The area is 15.750000000000000

]0;hh35@remotel1: ~/cs214/project/project01[01;32mhh35@remotel1[00m:[01;34m~/cs214/project/project01[00m$ java RectangleArea


To compute the area of a rectangle,
 enter its width: 5.99999
 enter its length: 6.99999

The area is 41.9998700001

The area is 41.999870

The area is 41.999870000100000

]0;hh35@remotel1: ~/cs214/project/project01[01;32mhh35@remotel1[00m:[01;34m~/cs214/project/project01[00m$ exit
exit

Script done on 2022-01-17 16:54:49-05:00 [COMMAND_EXIT_CODE="0"]
