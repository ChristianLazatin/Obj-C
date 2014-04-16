//
//  main.c
//  FoundOne
//
//  Created by Christian Ramir Lazain on 4/16/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    /*This program counts by 3 from 99 down to 0 and prints out
     the text Found one! when the number is divisible by 5*/

    for (int i = 99; i >= 0; i-=3)
    {
        if ((i % 5) == 0)
            printf("\n%i Found one!", i);
        else
            printf("\n%i", i);
    }
    
    return 0;
}

