/* Birds.java illustrates inheritance and polymorphism.
 *
 * Begun by: Joel Adams, for CS 214 Lab 10 at Calvin College.
 * Completed by: Haim Hong
 * Date: Marh 25 2022
 *********************************************************/

public class Birds {
  
  public static void main(String[] args) {
      System.out.println("\nWelcome to the Bird Park!\n");
      // testubg each kind of birds
      Bird bird0 = new Bird();

      Bird bird1 = new Bird("Hawkeye");
      bird1.print();

      Duck bird2 = new Duck("Donald");
      bird2.print();

      Goose bird3 = new Goose("Mother Goose");
      bird3.print();

      Owl bird4 = new Owl("Woodsey");
      bird4.print();

      Bird bird5 = new Ostrich("Orville");
      bird5.print();

      Bird bird6 = new Kiwi("Fruit");
      bird6.print();

      Bird bird7 = new Penguin("Peter");
      bird7.print();
      System.out.println();


    }
}

