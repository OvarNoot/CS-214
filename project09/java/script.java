Script started on 2022-03-19 20:13:45-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;hh35@gold30: ~/cs214/project/project09/java[01;32mhh35@gold30[00m:[01;34m~/cs214/project/project09/java[00m$ cat Temperature.java TemperatureTesteer.java[A]0;hh35@gold30: ~/cs214/project/project09/java[01;32mhh35@gold30[00m:[01;34m~/cs214/project/project09/java[00m$ [16P./temperature_tester
[K[A]0;hh35@gold30: ~/cs214/project/project09/java[01;32mhh35@gold30[00m:[01;34m~/cs214/project/project09/java[00m$ ./temperature_testercat Temperature.java TemperatureTesteer.java
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
}/*
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
}]0;hh35@gold30: ~/cs214/project/project09/java[01;32mhh35@gold30[00m:[01;34m~/cs214/project/project09/java[00m$ [Kcat Temperature.java TemperatureTesteer.java[A]0;hh35@gold30: ~/cs214/project/project09/java[01;32mhh35@gold30[00m:[01;34m~/cs214/project/project09/java[00m$ [16P./temperature_tester
[K[A]0;hh35@gold30: ~/cs214/project/project09/java[01;32mhh35@gold30[00m:[01;34m~/cs214/project/project09/java[00m$ ./temperature_testergnatmake temperature_tester.adb -gnatta[A]0;hh35@gold30: ~/cs214/project/project09/java[01;32mhh35@gold30[00m:[01;34m~/cs214/project/project09/java[00m$ [16P./temperature_tester
[K[A]0;hh35@gold30: ~/cs214/project/project09/java[01;32mhh35@gold30[00m:[01;34m~/cs214/project/project09/java[00m$ ./temperature_testercat Temperature.java TemperatureTesteer.java[A]0;hh35@gold30: ~/cs214/project/project09/java[01;32mhh35@gold30[00m:[01;34m~/cs214/project/project09/java[00m$ [K
[K[A]0;hh35@gold30: ~/cs214/project/project09/java[01;32mhh35@gold30[00m:[01;34m~/cs214/project/project09/java[00m$ javac -deprecation Temperature.java
]0;hh35@gold30: ~/cs214/project/project09/java[01;32mhh35@gold30[00m:[01;34m~/cs214/project/project09/java[00m$ javac -deprecation TemperatureTester .java
]0;hh35@gold30: ~/cs214/project/project09/java[01;32mhh35@gold30[00m:[01;34m~/cs214/project/project09/java[00m$ [Kjava TemperatureTester
Enter baseTemp, a Temperature: d 0 f F
Enter limitTemp, a Temperature: 100 C
Enter stepValue, a real: 2.5
0.00	F	-17.78	C	255.37	K
2.50	F	-16.39	C	256.76	K
5.00	F	-15.00	C	258.15	K
7.50	F	-13.61	C	259.54	K
10.00	F	-12.22	C	260.93	K
12.50	F	-10.83	C	262.32	K
15.00	F	-9.44	C	263.71	K
17.50	F	-8.06	C	265.09	K
20.00	F	-6.67	C	266.48	K
22.50	F	-5.28	C	267.87	K
25.00	F	-3.89	C	269.26	K
27.50	F	-2.50	C	270.65	K
30.00	F	-1.11	C	272.04	K
32.50	F	0.28	C	273.43	K
35.00	F	1.67	C	274.82	K
37.50	F	3.06	C	276.21	K
40.00	F	4.44	C	277.59	K
42.50	F	5.83	C	278.98	K
45.00	F	7.22	C	280.37	K
47.50	F	8.61	C	281.76	K
50.00	F	10.00	C	283.15	K
52.50	F	11.39	C	284.54	K
55.00	F	12.78	C	285.93	K
57.50	F	14.17	C	287.32	K
60.00	F	15.56	C	288.71	K
62.50	F	16.94	C	290.09	K
65.00	F	18.33	C	291.48	K
67.50	F	19.72	C	292.87	K
70.00	F	21.11	C	294.26	K
72.50	F	22.50	C	295.65	K
75.00	F	23.89	C	297.04	K
77.50	F	25.28	C	298.43	K
80.00	F	26.67	C	299.82	K
82.50	F	28.06	C	301.21	K
85.00	F	29.44	C	302.59	K
87.50	F	30.83	C	303.98	K
90.00	F	32.22	C	305.37	K
92.50	F	33.61	C	306.76	K
95.00	F	35.00	C	308.15	K
97.50	F	36.39	C	309.54	K
100.00	F	37.78	C	310.93	K
102.50	F	39.17	C	312.32	K
105.00	F	40.56	C	313.71	K
107.50	F	41.94	C	315.09	K
110.00	F	43.33	C	316.48	K
112.50	F	44.72	C	317.87	K
115.00	F	46.11	C	319.26	K
117.50	F	47.50	C	320.65	K
120.00	F	48.89	C	322.04	K
122.50	F	50.28	C	323.43	K
125.00	F	51.67	C	324.82	K
127.50	F	53.06	C	326.21	K
130.00	F	54.44	C	327.59	K
132.50	F	55.83	C	328.98	K
135.00	F	57.22	C	330.37	K
137.50	F	58.61	C	331.76	K
140.00	F	60.00	C	333.15	K
142.50	F	61.39	C	334.54	K
145.00	F	62.78	C	335.93	K
147.50	F	64.17	C	337.32	K
150.00	F	65.56	C	338.71	K
152.50	F	66.94	C	340.09	K
155.00	F	68.33	C	341.48	K
157.50	F	69.72	C	342.87	K
160.00	F	71.11	C	344.26	K
162.50	F	72.50	C	345.65	K
165.00	F	73.89	C	347.04	K
167.50	F	75.28	C	348.43	K
170.00	F	76.67	C	349.82	K
172.50	F	78.06	C	351.21	K
175.00	F	79.44	C	352.59	K
177.50	F	80.83	C	353.98	K
180.00	F	82.22	C	355.37	K
182.50	F	83.61	C	356.76	K
185.00	F	85.00	C	358.15	K
187.50	F	86.39	C	359.54	K
190.00	F	87.78	C	360.93	K
192.50	F	89.17	C	362.32	K
195.00	F	90.56	C	363.71	K
197.50	F	91.94	C	365.09	K
200.00	F	93.33	C	366.48	K
202.50	F	94.72	C	367.87	K
205.00	F	96.11	C	369.26	K
207.50	F	97.50	C	370.65	K
210.00	F	98.89	C	372.04	K
]0;hh35@gold30: ~/cs214/project/project09/java[01;32mhh35@gold30[00m:[01;34m~/cs214/project/project09/java[00m$ java TemperatureTester
Enter baseTemp, a Temperature: 0 K
Enter limitTemp, a Temperature: 212 F
Enter stepValue, a real: 20.0
-459.67	F	-273.15	C	0.00	K
-423.67	F	-253.15	C	20.00	K
-387.67	F	-233.15	C	40.00	K
-351.67	F	-213.15	C	60.00	K
-315.67	F	-193.15	C	80.00	K
-279.67	F	-173.15	C	100.00	K
-243.67	F	-153.15	C	120.00	K
-207.67	F	-133.15	C	140.00	K
-171.67	F	-113.15	C	160.00	K
-135.67	F	-93.15	C	180.00	K
-99.67	F	-73.15	C	200.00	K
-63.67	F	-53.15	C	220.00	K
-27.67	F	-33.15	C	240.00	K
8.33	F	-13.15	C	260.00	K
44.33	F	6.85	C	280.00	K
80.33	F	26.85	C	300.00	K
116.33	F	46.85	C	320.00	K
152.33	F	66.85	C	340.00	K
188.33	F	86.85	C	360.00	K
]0;hh35@gold30: ~/cs214/project/project09/java[01;32mhh35@gold30[00m:[01;34m~/cs214/project/project09/java[00m$ exit

Script done on 2022-03-19 20:14:51-04:00 [COMMAND_EXIT_CODE="0"]
