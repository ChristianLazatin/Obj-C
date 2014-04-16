//
//  main.c
//  Triangle
//
//  Created by Christian Ramir Lazain on 4/16/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#include <stdio.h>

float remainingAngle (float x, float y)
{
    return (180 - (x + y));
}

int main(int argc, const char * argv[])
{
    float angleA, angleB;
    
    printf("Enter the first angle: ");
    scanf("%f", &angleA);
    
    printf("\nEnter the second angle: ");
    scanf("%f", &angleB);
    
    float angleC = remainingAngle(angleA, angleB);
    
    printf("The third angle is %.2f", angleC);
    
    return 0;
}

