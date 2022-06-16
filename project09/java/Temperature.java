/* Temperature.java implements class
 *
 *
 * Haim Hong
 * March 17 2022
*/
import java.util.Scanner;
import java.lang.Character;

class Temperature {

    private Double myDegrees;
    private char myScale;
    private static final char kelvin = 'K';
    private static final char celsius = 'C';
    private static final char fahrenheit = 'F';

    // Temperature contructor with initialization
    public Temperature(Double deg, char sca){
        myDegrees = deg;
        myScale = Character.toUpperCase(sca);
        if (!checkValid(myDegrees, myScale)){
            throw new IllegalArgumentException("Invalid scale");
        }
    }

    // extractor for degree of a temp
    public final Double getDegrees(){
        return myDegrees;
    }

    // extractor for scale of a temp
    public final Character getScale(){
        return myScale;
    }

    // converts any to fahrenheit if its not if it is just return itself
    // calculates and use that to return new temperature 
    public Temperature toFahrenheit(){
        if (myScale == kelvin){
            return new Temperature((myDegrees - 273.15) * (9.0/5.0) + 32.0, fahrenheit);
        }
        else if (myScale == celsius){
            return new Temperature((myDegrees * (9.0/5.0)) + 32.0, fahrenheit);
        }
        else {
            return this;
        }
    }

    // converts any to celsius if its not if it is just return itself
    // calculates and use that to return new temperature 
    public Temperature toCelsius(){
        if (myScale == kelvin){
            return new Temperature(myDegrees - 273.15, celsius);
        }
        else if (myScale == fahrenheit){
            return new Temperature((myDegrees - 32.0) * (5.0/9.0), celsius);
        }
        else {
            return this;
        }
    }

    // converts any to kelvin if its not if it is just return itself
    // calculates and use that to return new temperature 
    public Temperature toKelvin(){
        if (myScale == fahrenheit){
            return new Temperature((myDegrees - 32.0) * (5.0/9.0) + 273.15, kelvin);
        }
        else if (myScale == celsius){
            return new Temperature(myDegrees + 273.15, kelvin);
        }
        else {
            return this;
        }
    }

    // reads the temperature from user input
    // returns temperature with user inputted degree and scale
    public static Temperature readTemperature(Scanner input){

        String temps = input.nextLine();
        String [] splite = temps.split(" ");
        Character scale = splite[1].charAt(0);
        Double degree = Double.parseDouble(splite[0]);
        try {
            Double degree1 = Double.parseDouble(splite[0]);
        } catch (NumberFormatException A){
            return null;
        } if (!checkValid(degree, scale)){
            return null;
        }
        return new Temperature(degree, scale);
    }

    // prints out the tempeerature 
    public final void printTemperature(){
        System.out.printf("%.2f\t%c",myDegrees, myScale);
    }

    // raises the value of temperature 
    public Temperature raise(Double moreDegree){
        return new Temperature(myDegrees + moreDegree, myScale);
    }

    // lowers the value of temperature 
    public Temperature lower(Double moreDegree, char scale){
        if (!checkValid(moreDegree, scale)){
            return null;
        }
        return new Temperature((myDegrees - moreDegree), myScale);
    }
    
    // checks if the temperature are same
    // returns true or false
    public boolean equals(Temperature cTemp){
        //System.out.println("==");
        //System.out.println(myDegrees);
        //System.out.println(compareT(cTemp).getDegrees());
        //System.out.println(myDegrees - compareT(cTemp).getDegrees() == 0.0);
        return  myDegrees - compareT(cTemp).getDegrees() == 0.0;
    }

    // checks if the temperature is lower than other temp
    // returns true or false
    public boolean lowerThan(Temperature cTemp){
        return  myDegrees < compareT(cTemp).getDegrees() ;
    }

    // compares the two temperatures and converts it to be same
    // returns the temp that is converted
    public Temperature compareT(Temperature cTemp){
        if (myScale != cTemp.getScale()){
            if (myScale == celsius){
                return cTemp.toCelsius();
            }
            else if (myScale == fahrenheit){
                return cTemp.toFahrenheit();
            }
            else {
                return cTemp.toKelvin();
            }
        }
        return cTemp;
    }
    // check if the temperatures are valid
    // returns true if all all correct else false
    private static boolean checkValid(Double degree, char scale){
        if (Character.isLowerCase(scale)){
            Character.toUpperCase(scale);
        }
        if ((scale == kelvin && degree >= 0) || (scale == celsius && degree >= -273.15) || (scale == fahrenheit && degree >= -459.67)){
            return true;
        }
        return false;
    }
}