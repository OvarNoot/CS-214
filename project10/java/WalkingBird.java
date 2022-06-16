/* WalkingBIrd.java is subclass of Bird
 *
 * Completed by: Haim Hong
 * Date: March 25 2022
 ******************************************************/

public class WalkingBird extends Bird{
  /* default constructor
  * PostCond: myName == "".
  */
    public WalkingBird(){
        super();
      }
     /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
    public WalkingBird(String name){
        super(name);
      }
  /* A WalkingBird's movement
  * Return: a movement for WalkingBird
  */
    public String movement(){
        return "walked";
      }
}