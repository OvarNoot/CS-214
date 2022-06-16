/* Kiwi.java provides an Kiwi subclass of Walkingbird.
 *
 * Completed by: Haim Hong
 * Date: March 25 2022
 ******************************************************/

public class Kiwi extends WalkingBird{
    /* default constructor
     * PostCond: myName == "".
     */
     public Kiwi(){
       super();
     }
    /* explicit constructor
     * Receive: name, a String 
     * PostCond: myName == name.
     */
     public Kiwi(String name){
       super(name);
     }
   
   
    /* An Ostrich's Call
     * Return: an owl-call ("Whoo-hoo!").
     */
     public String call(){
       return "Phrrrrrrrr!";
     }
   } 