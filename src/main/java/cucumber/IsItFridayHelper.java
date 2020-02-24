package cucumber;

public class IsItFridayHelper {
    static String isItFriday(String today) {
        if ("friday".matches(today.toLowerCase())) {
            return "Yep";
        } else {
            return "Nope";
        }
    }
}
