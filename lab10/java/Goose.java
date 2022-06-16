/* Goose.java provides a Goose subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Haim Hong
 * Date: Marh 24 2022
 ******************************************************/

public class Goose extends Bird{
 /* default constructor
  * PostCond: myName == "".
  */
  public Goose(){
    super(); // super references to the super class
  }
 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Goose(String name){
    super(name); // referencing to the super class
  }


 /* A Goose's Call
  * Return: a goose-call ("Honk!").
  */
  public String call(){
    return "Honk!";
  }
} 

