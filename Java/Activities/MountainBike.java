package Activity7;

public class MountainBike extends Bicycle {

    int seatHeight;

    MountainBike(int gears,int currentSpeed, int seatHeight)
    {
        super(gears,currentSpeed);
    }

    public void setHeight(int newValue) {
        seatHeight = newValue;
    }

    public String bicycleDesc() {
        return (super.bicycleDesc() +"\nSeat height is " + seatHeight);
}
public static void main(String args[]) {
    MountainBike mb = new MountainBike(3, 18, 25);
    System.out.println(mb.bicycleDesc());
    mb.speedUp(20);
    mb.applyBrake(5);
}

}