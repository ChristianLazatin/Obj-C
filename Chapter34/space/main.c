//
//  main.c
//  space
//
//  Created by Christian Ramir Lazain on 4/21/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#include <stdio.h>
#include <string.h>

int spaceCount (char *s)
{
    int sum = 0;
    for (int i = 0, n = strlen(s); i < n; i++) {
        if (s[i] == 0x20) {
            sum++;
        }
    }
    return sum;
}

int main(int argc, const char * argv[])
{

    const char *sentence = "He was not in the cab at the time of birth of his first son";
    printf("\"%s\" has %d spaces\n", sentence, spaceCount(sentence));
    return 0;
}

