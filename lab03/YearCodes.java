/* YearCodes.java is a driver for function yearCode().
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Haim Hong
 * Jan 27 2022
 ****************************************************************/

import java.util.Scanner;

public class YearCodes {

   public static void main(String[] args) {
      Scanner keyboard = new Scanner(System.in);
      System.out.println("\nEnter your academic year: "); // prompt

      String year = keyboard.next();      // read year
      System.out.println(yearCode(year)); // display its code
   }

   /***************************************************************
    * yearCode() converts an academic year into its integer code.
    *
    * Receive: year, a string.
    * PRE: year is one of {freshman, sophomore, junior, or senior}.
    * Return: the integer code corresponding to year.
    */

   // REPLACE THIS LINE WITH THE DEFINITION OF yearCode()
   public static int yearCode(String year){
      if (year.equals("freshman")) // if input is equal to freshman
         return 1;
      else 
         if (year.equals("sophomore")) // if input is equal to sophomore
            return 2;
         else 
            if (year.equals("junior")) // if input is equal to junior
               return 3;
            else 
               if (year.equals("senior")) // if input is equal to senior
                  return 4;
               else
                  return 0;
   }
}
/*
   MethodDef       ::=   MethodHeading MethodBody
   MethodHeading   ::=   Type identifier (ParameterDecs)
   ParameterDecs   ::=   ParameterDec MoreParams | Ø
   ParameterDec    ::=   Type identifier DefaultArg
   DefaultArg      ::=   = Expression | Ø
   MoreParams      ::=   , ParameterDec MoreParams | Ø
   MethodBody      ::=   { StatementList }

   IfStmt          ::=   if (Expression) Statement ElsePart
   ElsePart        ::=   else Statement | Ø

   Expression      ::=   BoolExpr
   BoolExpr        ::=   RelationalExpr BoolCondition
   BoolCondition   ::=   BoolOp RelationalExpr | Ø
   BoolOp          ::=   && | || | !
   RelationalExpr  ::=   Expression RelationalCond
   RelationalCond  ::=   RelationalOp Expression | Ø
   RelationalOp    ::=   == | != | < | > | <= | >=
*/

