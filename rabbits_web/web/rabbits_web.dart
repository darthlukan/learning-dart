import 'dart:math';
import 'dart:html';

int rabbitCount;
const int NUM_YEARS = 10;
const int GROWTH_FACTOR = 15;

void main() {
    querySelector("#submit").onClick.listen( (e) => calcRabbits() );
}

calcRabbits() {
    InputElement yearsInput = querySelector("#years");
    LabelElement output = querySelector("#output");

    String yearsString = yearsInput.value;
    int years = int.parse(yearsString);

    output.innerHtml = "${calculateRabbits(years)}";
}

int calculateRabbits(int years) {
    return (2 * pow(E, log(GROWTH_FACTOR) * years)).round().toInt();
}