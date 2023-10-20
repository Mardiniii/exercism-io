class MicroBlog {
    public String truncate(String input) {
        int length = input.length();
        int codePointsCount = input.codePointCount(0, length);

        if (codePointsCount <= 5) {
            return input;
        } else {
            return input.substring(0, input.offsetByCodePoints(0, 5));
        }
    }

    public static void main(String args[]) {
        MicroBlog blog = new MicroBlog();
        System.out.println(blog.truncate("TES😇TING"));
    }
}
