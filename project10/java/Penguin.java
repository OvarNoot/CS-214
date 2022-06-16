/* Penguin.java provides an Penguin subclass of Walkingbird.
 *
 * Completed by: Haim Hong
 * Date: March 25 2022
 ******************************************************/

public class Penguin extends WalkingBird{
    /* default constructor
     * PostCond: myName == "".
     */
     public Penguin(){
       super();
     }
    /* explicit constructor
     * Receive: name, a String 
     * PostCond: myName == name.
     */
     public Penguin(String name){
       super(name);
     }

   
   
    /* An Penguin's Call
     * Return: an owl-call ("Whoo-hoo!").
     */
     public String call(){
       return "Huh-huh-huh-huuuuh!";
     }
   } 