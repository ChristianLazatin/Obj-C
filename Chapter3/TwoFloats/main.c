//
//  main.c
//  TwoFloats
//
//  Created by Christian Ramir Lazain on 4/16/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    float operand1 = 3.14;
    float operand2 = 42.0;
    
    float sum = operand1 + operand2;
    
    printf("%.2f + %.2f = %.2f", operand1, operand2, sum);
    
    return 0;
}

