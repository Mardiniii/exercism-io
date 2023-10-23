import java.util.HashMap;

class BottleSong {

    String recite(int startBottles, int takeDown) {
        String song = "";

        for (int index = startBottles; index > startBottles - takeDown; index--) {
            song += onTheWallLine(index);
            song += onTheWallLine(index);
            song += fallLine();
            song += remainingBottlesLine(index - 1);
            if (index - 1 != startBottles - takeDown) song += "\n";
        }

        return song;
    }

    String numberToString(int number) {
        HashMap<Integer, String> mapping = new HashMap<Integer, String>();

        mapping.put(0, "no");
        mapping.put(1, "One");
        mapping.put(2, "Two");
        mapping.put(3, "Three");
        mapping.put(4, "Four");
        mapping.put(5, "Five");
        mapping.put(6, "Six");
        mapping.put(7, "Seven");
        mapping.put(8, "Eight");
        mapping.put(9, "Nine");
        mapping.put(10, "Ten");

        return mapping.get(number);
    }

    String onTheWallLine(int bottles) {
        String numberOfBottles = numberToString(bottles);
        String bottlesText = getBottlesText(numberOfBottles);

        return numberOfBottles + " green " + bottlesText + " hanging on the wall,\n";
    }

    String fallLine() {
        return "And if one green bottle should accidentally fall,\n";
    }

    String getBottlesText(String numberOfBottles) {
        return numberOfBottles == "One" ? "bottle" : "bottles";
    }

    String remainingBottlesLine(int bottles) {
        String numberOfBottles = numberToString(bottles);
        String bottlesText = getBottlesText(numberOfBottles);

        return "There'll be " + numberOfBottles.toLowerCase() + " green " + bottlesText + " hanging on the wall.\n";
    }

}