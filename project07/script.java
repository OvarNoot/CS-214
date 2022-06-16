Script started on 2022-02-25 13:41:40-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="144" LINES="24"]
]0;hh35@gold27: ~/cs214/project/project07[01;32mhh35@gold27[00m:[01;34m~/cs214/project/project07[00m$ [K]0;hh35@gold27: ~/cs214/project/project07[01;32mhh35@gold27[00m:[01;34m~/cs214/project/project07[00m$ cat Array_p Processing.java
/*
    display values in an array on the screen
    given array, fills it wiht values from keyboard
    
    Haim Hong
    Feb 24
*/

import java.io.*;
import java.util.Scanner;

public class Array_Processing
{
    public static void main (String[] args){
        Scanner keyboard = new Scanner(System.in);


        System.out.println("Enter the size of array");
        int a = keyboard.nextInt(); // get the size
        double array[] = new double[a]; // makes empty array with size from user input
        readArray(array, a); // calls functions

        printArray(array, a);
    }
    /*
    printArray
    Gets array and the size
    outputs the arrays in seperate lines
    */
    public static void printArray(double[] array, int size){
        System.out.println("\nPrinting Arrays");
        for (int i=0; i < size; i++){ // loops
            System.out.println(array[i]); // prints out the array in i part
        }
    }
    /*
    readArray
    Gets array and size
    gets the input from user until the end of the loop
    */
    public static void readArray(double[] array, int size){
        Scanner keyboard = new Scanner(System.in);
        for (int i = 0; i < size; i++){ // loops until its the end of the size
            System.out.println("Enter the value for array: ");
            array[i] = keyboard.nextDouble(); // puts the input into array
        }
    }
}]0;hh35@gold27: ~/cs214/project/project07[01;32mhh35@gold27[00m:[01;34m~/cs214/project/project07[00m$ javac - -deprecation Array_Procc essing.java
]0;hh35@gold27: ~/cs214/project/project07[01;32mhh35@gold27[00m:[01;34m~/cs214/project/project07[00m$ java Array_Processing. 
Enter the size of array
5
Enter the value for array: 
1
Enter the value for array: 
2
Enter the value for array: 
3
Enter the value for array: 
4
Enter the value for array: 
5

Printing Arrays
1.0
2.0
3.0
4.0
5.0
]0;hh35@gold27: ~/cs214/project/project07[01;32mhh35@gold27[00m:[01;34m~/cs214/project/project07[00m$ java Array_Processing
Enter the size of array
3
Enter the value for array: 
62
Enter the value for array: 
64  92
Enter the value for array: 
15

Printing Arrays
62.0
92.0
15.0
]0;hh35@gold27: ~/cs214/project/project07[01;32mhh35@gold27[00m:[01;34m~/cs214/project/project07[00m$ exit

Script done on 2022-02-25 13:44:20-05:00 [COMMAND_EXIT_CODE="0"]
