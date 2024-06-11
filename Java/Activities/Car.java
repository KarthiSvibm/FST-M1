package Activities;

public class Car {
    String color;
    String transmission;
    int make;
    int tyres;
    int doors;


    Car(){
        tyres = 4;
        doors = 4;
    }

    public void displayCharacteristics(){
        System.out.println("Color of Nexon:"+ color);
        System.out.println("Transmission type of Nexon"+transmission);
        System.out.println("Year made of Nexon"+make);
        System.out.println("Number of Doors"+doors);
        System.out.println("Number of Tyres"+tyres);

    }

    public void accelarate(){
        System.out.println("Car is moving forward.");
    }
    public void brake(){
        System.out.println("Car has stopped.");
    }


}
