public class CarsAssemble {
    static final int[] productionBySpeed = {0, 221, 442, 663, 884, 1105, 1326, 1547, 1768, 1989, 2210};
    public double productionRatePerHour(int speed) {
        double rate = 0;

        if (speed == 0 ) {
            return rate;
        } else if (speed > 0 && speed < 5) {
            return productionBySpeed[speed];
        } else if (speed > 0 && speed < 9) {
            return productionBySpeed[speed] * 0.9;
        } else if (speed == 9) {
            return productionBySpeed[speed] * 0.8;
        } else {
            return productionBySpeed[speed] * 0.77;
        }
    }

    public int workingItemsPerMinute(int speed) {
        return (int)(productionRatePerHour(speed) / 60);
    }

    public static void main(String[] args) {
        CarsAssemble assembler = new CarsAssemble();
        assembler.workingItemsPerMinute(6);
    }
}
