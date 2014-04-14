//
//  main.m
//  Find proper name
//
//  Created by Christian Ramir Lazain on 4/14/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        /* This program reads from two file to get the proper names and proper words and compares
         if the two match and prints it to the screen. The search process is a selection sort
         which can be improved to a binary search since both files has an alphabetical list of 
         words and names*/
        
        //Read in a file as a huge string (ignoring the possibility of an error)
        //Read the list of proper names
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        
        //Read the list of words
        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        
        //Break it into an array of strings separated by a new line
        NSArray *names = [nameString componentsSeparatedByString:@"\n" ];
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        
        NSLog(@"The names and words that both have an \"aa\" are:" );
        
        //Go through the array of names and compare each to the array of words
        for (NSString *n in names) {
            
            //Look for the string "aa" in a case-insensitive manner on the array of names
            NSRange names_with_aa = [n rangeOfString:@"aa" options:NSCaseInsensitiveSearch];
            
            //Was a name with "aa" found?
            if (names_with_aa.location != NSNotFound) {
                
                //If yes, compare the name to the list of words with "aa"
                for (NSString *w in words) {
                    
                    //get all words with "aa"
                    NSRange words_with_aa = [w rangeOfString:@"aa" options:NSCaseInsensitiveSearch];
                    
                    //Found a match?
                    if (words_with_aa.location != NSNotFound) {
                        
                        //Print the name with a matching word
                        NSLog(@"%@",n);
                        
                        //Iterate back to the outer loop(names loop) to avoid multiple results
                        break;
                    }
                }
            }
        }
        
    }
    return 0;
}

