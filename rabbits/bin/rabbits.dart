import 'dart:math';

int rabbitCount;
const int NUM_YEARS = 10;
const int GROWTH_FACTOR = 15;

void main() {

    print("The number of rabbits increases as:\n");
    for (int years = 0; years <= 10; years++) {
        rabbitCount = calculateRabbits(years);
        print("After $years years:\t $rabbitCount rabbits");
    }
}

int calculateRabbits(int years) {
    return (2 * pow(E, log(GROWTH_FACTOR) * years)).round().toInt();
}
