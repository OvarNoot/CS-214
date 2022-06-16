/*
 * TemperatureTEster is a driver to test class Temperature
 * Haim Hong
 * Marh 17 2022
*/
import java.util.Scanner;

public class TemperatureTester
{
    public static void main(String[] args){
        Temperature temp1 = new Temperature(0.0, 'C');
        Temperature temp2 = new Temperature(273.15, 'K');
        Temperature temp3 = new Temperature(32.0, 'F');
        // test degree and scales
        assert temp1.getDegrees() == 0.0;
        assert temp1.getScale() == 'C'; 
        // test degree and scales
        assert temp2.getDegrees() == 273.15;
        assert temp2.getScale() == 'K'; 
        // test degree and scales
        assert temp3.getDegrees() == 32.0;
        assert temp3.getScale() == 'F'; 

        // testing the tocelsius, to fahrenheit, tokelvin for temp1
        // to celsius
        assert temp1.toCelsius().equals(temp3);
        assert temp2.toCelsius().equals(temp1);
        assert temp3.toCelsius().equals(temp1);
        // to fahrenheit
        assert temp3.toFahrenheit().equals(temp3);
        assert temp2.toFahrenheit().equals(temp3);
        assert temp1.toFahrenheit().equals(temp3);
        // to kelvin
        assert temp1.toKelvin().equals(temp2);
        assert temp3.toKelvin().equals(temp2);
        assert temp2.toKelvin().equals(temp2);




        Scanner input = new Scanner(System.in);
                
        System.out.print("Enter baseTemp, a Temperature: ");
        Temperature baset = Temperature.readTemperature(input);
        
        System.out.print("Enter limitTemp, a Temperature: ");
        Temperature limit = Temperature.readTemperature(input);

        System.out.print("Enter stepValue, a real: ");
        Double stepValue = input.nextDouble();

        Temperature uses = baset;
        while (uses.lowerThan(limit)){

            uses.toFahrenheit().printTemperature();
            System.out.print("\t");
            uses.toCelsius().printTemperature();
            System.out.print("\t");
            uses.toKelvin().printTemperature();
            System.out.print("\n");
            uses = uses.raise(stepValue);
        }
        
    }
}