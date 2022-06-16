/* Ostrich.java provides an Ostrich subclass of Walkingbird.
 *
 * Completed by: Haim Hong
 * Date: March 25 2022
 ******************************************************/

public class Ostrich extends WalkingBird{
    /* default constructor
     * PostCond: myName == "".
     */
     public Ostrich(){
       super();
     }
    /* explicit constructor
     * Receive: name, a String 
     * PostCond: myName == name.
     */
     public Ostrich(String name){
       super(name);
     }
   
   
    /* An Ostrich's Call
     * Return: an owl-call ("Whoo-hoo!").
     */
     public String call(){
       return "Snork!";
     }
   } 