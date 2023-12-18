#include <iostream>
#include "calculator.h"

int main() {
    Calculator calculator;

    double a = 10.0;
    double b = 5.0;

    int sum = calculator.Add(a, b);
    int difference = calculator.Sub(a, b);

    std::cout << "Sum: " << sum << std::endl;
    std::cout << "Difference: " << difference << std::endl;

    return 0;
}
