/* Aggregate Operations
 * Student: Haim Hong
 * Date: March 10 2022
 ************************************************************/

import java.awt.RenderingHints.Key;
import java.util.Scanner;

public class NameTester  
{
  public static void main(String[] args)
  {
      Name aName = new Name("John", "Paul", "Jones");

      assert aName.getFirst().equals("John") ;
      assert aName.getMiddle().equals("Paul") ;
      assert aName.getLast().equals("Jones") ;

      System.out.println(aName);
      assert aName.toString().equals("John Paul Jones");

      // Setting the Names
      aName.setFirst("David");
      aName.setMiddle("Justin");
      aName.setLast("Joshua");
      // Testing the Names
      assert aName.getFirst().equals("David") ;
      assert aName.getMiddle().equals("Justin") ;
      assert aName.getLast().equals("Joshua") ;

      // Setting Names for lfmi
      aName.setFirst("Tyler");
      aName.setMiddle("Henry");
      aName.setLast("Voss");
      // Testing lfmi Last First with Middle Initials
      assert aName.lfmi().equals("Voss, Tyler, H.");

      Scanner keyboard = new Scanner(System.in);
      // Reads the name
      System.out.println("Used previeous set First Middle Last. (Tyler Henry Voss for assert for readName");
      aName.readName(keyboard);
      // Using get function to check if it worked as you typed
      assert aName.getFirst().equals("Tyler");
      assert aName.getMiddle().equals("Henry");
      assert aName.getLast().equals("Voss");
      
      

      System.out.println("All tests passed!");
  }
}

// Replace this line with the declaration of class Name...

class Name
{
  private String myFirst, myMiddle, myLast; //the data members

  public Name(String first, String middle, String last) // initializes them
  {
    myFirst = first;
    myMiddle = middle;
    myLast = last;
  }

  public String getFirst()
  {
     return myFirst; // return the first name
  }
  public String getMiddle()
  {
     return myMiddle; // return the middle name
  }
  public String getLast()
  {
     return myLast; // // return the last name
  }
  public String toString()
  {
     return myFirst + ' ' + myMiddle + ' ' + myLast; //return the whole names
  }

  public void setFirst(String aFirst) // sets the first name into different name
  {
   myFirst = aFirst;
  }
  public void setMiddle(String aMiddle) // sets the middle name into different name
  {
   myMiddle = aMiddle;
  }
  public void setLast(String aLast) // sets the last name into different name
  {
   myLast = aLast;
  }
  public String lfmi() // returns last first middle initial
  { 
   return myLast + ", " + myFirst + ", " + myMiddle.charAt(0) + '.';
  }
  public void readName(Scanner input) // reads the names from user first middle last
  {
   System.out.println("Enter first name");
   myFirst = input.next();
   System.out.println("Enter middle name");
   myMiddle = input.next();
   System.out.println("Enter last name");
   myLast = input.next();
  }
}

