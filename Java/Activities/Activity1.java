package Activities;


public class Activity1 {
    public static void main(String[] args) {
Car nexon = new Car();
nexon.color = "Black";
nexon.transmission = "Manual";
nexon.make = 2014;

nexon.displayCharacteristics();
nexon.accelarate();
nexon.brake();
}
}