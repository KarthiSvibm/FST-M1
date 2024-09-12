package Activity11;

import java.util.HashMap;

public class activity11 {

    public static void main(String[] args) {
        HashMap<Integer, String> colours = new HashMap<>();
        colours.put(1, "Red");
        colours.put(4, "White");
        colours.put(5, "Black");
        colours.put(2, "Green");
        colours.put(3, "Blue");

        System.out.println(" remove color:" +colours.remove(1));
        if(colours.containsValue("Green"))
        {
            System.out.println("Green is displayed");
        }
else
    {
        System.out.println("Green is not    displayed");
    }

    System.out.println("total size :" +colours.size());

    }
        

}
