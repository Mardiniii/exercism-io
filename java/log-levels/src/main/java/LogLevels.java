public class LogLevels {
    
    public static String message(String logLine) {
        return logLine.split("]: ", 2)[1].strip();
    }

    public static String logLevel(String logLine) {
        int begIndex = logLine.indexOf('[');
        int endIndex = logLine.indexOf(']');
        return logLine.substring(begIndex + 1, endIndex).toLowerCase();
    }

    public static String reformat(String logLine) {
        String errorType = logLevel(logLine);
        String message = message(logLine);

        return message + " (" + errorType + ')';
    }

    public static void main(String args[]) {
        LogLevels.reformat("[ERROR]: Invalid operation");
    }
}
