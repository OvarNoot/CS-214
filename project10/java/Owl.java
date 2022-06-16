/* Owl.java provides an Owl subclass of FlyingBird.
 *
 * Completed by: Haim Hong
 * Date: March 25 2022
 ******************************************************/

public class Owl extends FlyingBird{
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

