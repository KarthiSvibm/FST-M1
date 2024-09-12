package Activity7;

public class Bicycle implements BicycleParts, BicycleOperations {

  int gears;
 int currentSpeed;

Bicycle(int gears, int currentSpeed)
   {
    
    this.gears=gears;
    this.currentSpeed=currentSpeed;
   }
public void applyBrake(int decrement)
   {
      currentSpeed -= decrement;

      System.out.printf( "apply brake", +currentSpeed);
   }

   public void speedUp(int increment){

    {
        currentSpeed += increment ;
  
        System.out.printf("speed up", +currentSpeed);
     }
   }

   String bicycleDesc() {
    return("No of gears are "+ gears + "\nSpeed of bicycle is " + currentSpeed);
}
}