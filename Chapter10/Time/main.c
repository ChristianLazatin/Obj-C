//
//  main.c
//  Time
//
//  Created by Christian Ramir Lazain on 4/16/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[])
{
    /*This program tells what date it will be after 4 million seconds. 4 million seconds is equal to 1 month and 16 days 
     with excess of few hours. Since the target is only the date, the month and days are the only ones being modified*/
    
    //Get the current time stamp
    time_t secondsFrom1970 = time(NULL);
    struct tm tm=*localtime(&secondsFrom1970);
    
    //Print the current data
    printf("Today is %d-%d-%d\n", tm.tm_mon + 1, tm.tm_mday, tm.tm_year + 1900);
    
    //Check if today is a 31 day month and the number of days will exceed 31
   if (((tm.tm_mon==0)||(tm.tm_mon==2)||(tm.tm_mon==4)||(tm.tm_mon==6)||(tm.tm_mon==7)||(tm.tm_mon==9)||(tm.tm_mon==11)) && ((tm.tm_mday + 16)>31))
    {
        if (tm.tm_mon != 11)//if it is not december
        {
            tm.tm_mon += 1;//add 1 month
            tm.tm_mday = (tm.tm_mday + 16) - 31;//day = (16 + 16) - 31 = 2 days next month
        }
        else
        {
            tm.tm_year = 0;//if it is december, get it back to 0 which is January
            tm.tm_mday = (tm.tm_mday + 16) - 31;//add the offset number of days
        }
    }
    else if (((tm.tm_mon==1)||(tm.tm_mon==3)||(tm.tm_mon==5)||(tm.tm_mon==8)||(tm.tm_mon==10)) && ((tm.tm_mday + 16)>30))//If it is a 30 day month and number of days will exceed 30
    {
            tm.tm_mon += 1;//add 1 month
            tm.tm_mday = (tm.tm_mday + 16) - 30;//add the offset days
    }
    else//it is february
    {
        tm.tm_mon += 1;//always add one month
        tm.tm_mday = (tm.tm_mday + 16) - 28;//add the offset days, 28 is the number of days in feb
    }
    
    //Print the date after 4 million seconds
    printf("It is %d-%d-%d after 4 million seconds from now\n", tm.tm_mon + 1, tm.tm_mday, tm.tm_year + 1900);

    return 0;
}

