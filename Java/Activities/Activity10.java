package Activities;

import java.util.HashSet;

public class Activity10 {
    public static void main(String[] args) {
        HashSet<String> hs = new HashSet<String>();
        hs.add("One");
        hs.add("Two");
        hs.add("Three");
        hs.add("Four");
        hs.add("Five");
        hs.add("Six");
        System.out.println("Hash set:" + hs);
        System.out.println("Size of the Hash set is "+ hs.size());
        System.out.println("Removig item 3:" + hs.remove("Three"));
        if(hs.remove("Seven"))
        {
            System.out.println("Seven can be removed");
        }
        else
        {
            System.out.println("Seven cannot be removed");
        }
        System.out.println("Is Two available in the set? "+hs.contains("Two"));
        System.out.println("Updated Hash set:" + hs);
    }
}
