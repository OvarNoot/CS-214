/* Duck.java provides a Duck subclass of FlyingBird.
 *
 * Completed by: Haim Hong
 * Date: Marh 25 2022
 ******************************************************/

public class Duck extends FlyingBird{
 /* default constructor
  * PostCond: myName == "".
  */
    public Duck(){
      super(); // super references to the super class
    }
 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
    public Duck(String name){
      super(name); // referencing to the super class
    }


 /* A Duck's Call
  * Return: a duck-call ("Quack!").
  */
  public String call(){
    return "Quack!";
  }
}

