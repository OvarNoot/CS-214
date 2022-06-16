/* Owl.java provides an Owl subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Haim Hong
 * Date: March 24 2022
 ******************************************************/

public class Owl extends Bird{
 /* default constructor
  * PostCond: myName == "".
  */
  public Owl(){
    super();
  }
 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Owl(String name){
    super(name);
  }


 /* An Owl's Call
  * Return: an owl-call ("Whoo-hoo!").
  */
  public String call(){
    return "Hoo-Hoo-Hooooo!";
  }
} 

