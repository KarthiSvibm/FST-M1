package Activities;

import java.util.Scanner;

public class Activity3 {
    public static void main(String[] args) {
        System.out.println("Enter the seconds");
        Scanner data = new Scanner(System.in);
        double seconds = data.nextDouble();
        data.close();

        double EarthSeconds = 31557600;
        double MercurySeconds = 0.2408467;
        double VenusSeconds = 0.61519726;
        double MarsSeconds = 1.8808158;
        double JupiterSeconds = 11.862615;
        double SaturnSeconds = 29.447498;
        double UranusSeconds = 84.016846;
        double NeptuneSeconds = 164.79132;
        double earthage = seconds/EarthSeconds;
        double mercuryage = earthage/MercurySeconds;
        double venusage = earthage/VenusSeconds; 
        double marsage = earthage/MarsSeconds;
        double jupiterage = earthage/JupiterSeconds;
        double saturnage = earthage/SaturnSeconds;
        double uranusage = earthage/UranusSeconds;
        double neptuneage = earthage/NeptuneSeconds;

        System.out.println();
        System.out.println("Age on Earth will be "+earthage);
        System.out.println("Age on Mercury will be "+mercuryage);
        System.out.println("Age on Venus willl be "+venusage);
        System.out.println("Age on Mars will be "+marsage);
        System.out.println("Age on Jupiter will be "+jupiterage);
        System.out.println("Age on Saturn will be "+saturnage);
        System.out.println("Age on Uranus will be "+uranusage);
        System.out.println("Age on Neptune will be "+neptuneage); 
        System.out.println();




    }
}
