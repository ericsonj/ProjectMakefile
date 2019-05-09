#include <stdio.h>
#include "tools.h"
#include "util.h"
#include "fft.h"

int main() {
    printf("Hello, World! %d\n", sumAB(1, 2));
    printf("Max value %d\n", getMax(1, 2));
    printf("FFT value: %d\n", fft(10));
    return (0);
}
