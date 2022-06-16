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
}