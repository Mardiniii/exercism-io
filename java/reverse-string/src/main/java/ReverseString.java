class ReverseString {
    String reverse(String inputString) {
        String reversedString = "";

        for (int i = inputString.length() - 1; i >= 0; i--) {
            reversedString += inputString.charAt(i);
        }

        return reversedString;
    }

    public static void main(String args[]) {
        ReverseString reverser = new ReverseString();
        reverser.reverse("testing");
    }
}
