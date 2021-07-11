public class NinetyNineBeers {
    static int bottles = 99;

    static int random() {
        return (int) Math.floor(Math.random() * (100 - 0 + 1) + 0);
    }

    public static void main(String[] args) throws Exception {
        while (bottles != 0) {
            boolean ifWaste = false;
            while (1 < bottles || bottles <= -1) {
                verse(bottles);
                bottles--;
            }

            System.out.printf("%d bottles of beer on the wall,\n", bottles);
            System.out.printf("%d bottles of beer.\n", bottles);
            if (random() > 80) {
                System.out.println("If that one bottle should happen to fall,");
                if (random() < 20) {
                    ifWaste = true;
                }
            } else {
                System.out.println("Take one down and pass it around.");
            }

            bottles = ending(bottles, ifWaste);
        }
    }

    static void verse(int bottles) {
        System.out.printf("%d bottles of beer on the wall,\n", bottles);
        System.out.printf("%d bottles of beer.\n", bottles);
        if (random() > 80) {
            System.out.println("If one of those bottle should happen to fall");
            System.out.printf("%d bottles of beer on ", bottles - 1);
            System.out.println("the wall.\n");
        } else if (random() < 20) {
            System.out.println("If that one bottle should happens to fall,");
            System.out.println("what a waste of alcohol!\n");
        } else {
            System.out.println("Take one down and pass it around.");
            System.out.printf("%d bottles of beer on ", bottles - 1);
            System.out.println("the wall.\n");
        }
    }

    static int infiniteBottles() {
        verse(0);
        return -1;
    }

    static int ending(int bottles, boolean waste) {
        if ((random() == 100) && (bottles == 1)) {
            if (waste) {
                System.out.println("what a waste of alcohol!\n");
            } else {
                System.out.println("No more bottles of beer on the wall.\n");
            }

            bottles = infiniteBottles();
        } else {
            if (waste) {
                System.out.println("what a waste of alcohol!\n");
            } else {
                System.out.println("No more bottles of beer on the wall.\n");
            }

            System.out.println("No more bottles of beer on the wall");
            System.out.println("No more bottles of beer.");
            if (random() <= 60) {
                bottles = 0;
                if (random() <= 10) {
                    System.out.println("There's nothing else to fall,");
                    System.out.print("because there is no more bottle of ");
                    System.out.println("left on the wall.\n");
                } else {
                    System.out.println("We've taken them down and passed them around;");
                    System.out.println("now we're drunk and passed out!\n");
                }
            } else {
                bottles = 99;
                System.out.println("Go the the store and buy some more,");
                System.out.printf("%d bottles of beer on the wall.\n\n", bottles);
            }
        }

        return bottles;
    }
}
