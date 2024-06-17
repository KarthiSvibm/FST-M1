package Activities;

import java.util.ArrayList;

public class Activity9 {
    public static void main(String[] args) {
        ArrayList<String> myL = new ArrayList<String>();
        myL.add("One");
        myL.add("Two");
        myL.add(2, "Three");
        myL.add(3, "Four");
        myL.add("Five");


        for(String p:myL)
        {
            System.out.println(p);
        }

        System.out.println("The 3rd item in the List is: " + myL.get(2));
        System.out.println("Is Five is in the List? " + myL.contains("Five"));
        System.out.println("The size of the List is: " + myL.size());

        myL.remove("Five");

        System.out.println("The Size of the List after removing the last item: " + myL.size());
    }
}
