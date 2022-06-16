/* Max.java finds the maximum values in Java linked lists.
 * Completed by: Haim Hong
 * Date: March 31 2022
 */

import java.util.LinkedList;
import java.util.Iterator;
import java.util.Collections;

public class Max {

  public static void main(String [] args) {
    // define list1, list2, list3 here ...
    // LinkedList<Integer> list1 = null, list2 = null, list3 = null;
    LinkedList<Integer> list1 = new LinkedList<Integer>();
    LinkedList<Integer> list2 = new LinkedList<Integer>();
    LinkedList<Integer> list3 = new LinkedList<Integer>();

    list1.add(99);    // 99, 88, 77, 66, 55
    list1.add(88);    // max is first
    list1.add(77);
    list1.add(66);  
    list1.add(55);

    list2.add(55);    // 55, 66, 77, 88, 99
    list2.add(66);    // max is last
    list2.add(77);  
    list2.add(88);  
    list2.add(99);  
  
    list3.add(55);    // 55, 77, 99, 88, 66
    list3.add(77);    // max is in the middle
    list3.add(99);  
    list3.add(88);  
    list3.add(66);  
  
    print(list1); //prins out each lists wiht the method
    print(list2);  
    print(list3);

   // display maxima of the 3 lists...
   System.out.println("Max of list1: " + Collections.max(list1));
   System.out.println("Max of list2: " + Collections.max(list2));
   System.out.println("Max of list3: " + Collections.max(list3));

  // list wiht no 99
   LinkedList<Integer> list4 = new LinkedList<Integer>();
   list4.add(55);    
   list4.add(77);    
   list4.add(44);  
   list4.add(88);  
   list4.add(66);  


   System.out.println("\nIndex of 99 in list1 is " + search(list1, 99));
   System.out.println("Index of 99 in list2 is " + search(list2, 99));
   System.out.println("Index of 99 in list3 is " + search(list3, 99));
   System.out.println("Index of 99 in list4 is " + search(list4, 99));
  }

  /** print() displays a LinkedList on the console.
   *
   * @param: aList, a LinkedList<Integer>
   * 
   * Postcondition: the Integer values in aList
   *                 have been displayed to System.out,
   *                 separated by spaces.
   */
  public static void print (LinkedList<Integer> aList){
    Iterator<Integer> listIterator = aList.iterator();
    while (listIterator.hasNext()){
      System.out.print(listIterator.next() + " ");
    }
    System.out.println('\n');
  }

  /* search finds the index of value from the list
   *  gets aList, a LinkedList<Integer>, aVal
   *  Retrusn a index of value if found from the list else -1
   */
  public static Integer search (LinkedList<Integer> aList, Integer aVal){
    Iterator<Integer> listIterator = aList.iterator();
    Integer counter = 0;

    while (listIterator.hasNext()){
      if (listIterator.next() == aVal){
        return counter;
      }
      counter++;
    }
    return -1;
  }
}

