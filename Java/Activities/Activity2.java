package Activities;

import java.util.Arrays;

public class Activity2 {
public static void main(String[] args) {
    int[] Arr = {10, 77, 10, 54, -11, 10};
    
    System.out.println("Result ="+ Arrays.toString(Arr));

    int search =10;
    int validate =30;

    System.out.println("Result:"+ result(Arr, search, validate));
}
    public static boolean result(int[] numbers, int search, int validate) {
        int temp=0;
        for(int i=0;i<numbers.length;i++)
        {
            
            if(numbers[i]==search)
            {
                temp+=numbers[i];
            }
            else
            {
                break;            
            }

        }      
        System.out.println("Sum of 10's in Array: "+validate);
        return temp == search;
    }
}
