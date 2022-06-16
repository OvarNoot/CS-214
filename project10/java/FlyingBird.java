/* FlyingBird.java is subclass of Bird
 *
 * Completed by: Haim Hong
 * Date: March 25 2022
 ******************************************************/


public class FlyingBird extends Bird{
 /* default constructor
  * PostCond: myName == "".
  */
    public FlyingBird(){
        super(); // super references to the super class
      }
 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
    public FlyingBird(String name){
        super(name);
      }
  /* A FlyingBird's movement
  * Return: a movement for flying bird
  */
    public String movement(){
        return "flew";
      }
}
