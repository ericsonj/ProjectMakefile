/*
 * util.c
 *
 *  Created on: May 8, 2019
 *      Author: surix
 */

#include "tools.h"
#include "util.h"

int getMax(int a, int b) {
    int c = sumAB(a, b);
    int aux = sumAB(b, a);
    return b > a ? aux : c;
}
