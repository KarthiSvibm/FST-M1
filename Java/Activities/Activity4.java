package Activities;

import java.util.Arrays;
import java.util.Scanner;

public class Activity4 {
public static void main(String[] args) {
int [] input ={9, 5, 1, 4, 3};
String k;
Scanner c = new Scanner(System.in);
System.out.println("Enter your sort need");
k=c.nextLine();
c.close();

    switch(k){
        case "asc":
        asc(input);
        System.out.println("Sorted Array in Ascending Order: ");
        System.out.println(Arrays.toString(input));
        break;
        case "dsc":
        dsc(input);
        System.out.println("Sorted Array in Ascending Order: ");
        System.out.println(Arrays.toString(input));
        break;

        default:
        System.out.println("wrong choice!");
        break;
    }
}



    static void asc(int array []){

        
        for (int a=0; a<array.length; a++)
        {
            int temp=0;
            for (int b=0;b<array.length;b++)
            {
                if(array[a]<array[b])
                {
                    temp = array[a];
                    array[a] = array [b];
                    array [b] = temp;    
                }
            }     
        }
    }

    static void dsc(int array []){

        
        for (int a=0; a<array.length; a++)
        {
            int temp=0;
            for (int b=0;b<array.length;b++)
            {
                if(array[a]>array[b])
                {
                    temp = array[a];
                    array[a] = array [b];
                    array [b] = temp;    
                }
            }     
        }
    }
}



