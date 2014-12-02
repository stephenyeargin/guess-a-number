//
//  main.cpp
//  Guess a Number
//
//  Created by Stephen Yeargin on 12/1/14.
//  Copyright (c) 2014 Stephen Yeargin. All rights reserved.
//  Tutorial Link: http://www.raywenderlich.com/38557/learn-to-code-ios-apps-1-welcome-to-programming
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    NSLog(@"==============================");
    NSLog(@"****** Guess a Number ********");
    NSLog(@"==============================");
    NSLog(@"");
    NSLog(@"This is a simple game to pick a number between 1 and 100");

    int answer = 0;
    int guess = 0;
    int turn = 0;
    
    // Gets a random number between 1 and 100
    answer = arc4random() % 100 + 1;
    
    while (guess != answer) {
        turn++;
        
        NSLog(@"Guess #%i: ", turn);
        scanf("%i", &guess);
        
        // Guess too high
        if (guess > answer) {
            NSLog(@"Lower!");
        }
        // Guess too low
        else if (guess < answer) {
            NSLog(@"Higher!");
        }
        // Guess correct
        else {
            NSLog(@"Correct! The answer was %i.", answer);
        }
    }
    
    // Show once out of the while loop
    NSLog(@"It took you %i tries", turn);
    
    // Encourage/taunt player
    if (turn == 1) {
        NSLog(@"Rank: Ace");
    }
    else if (turn < 5) {
        NSLog(@"Rank: Outstanding!");
    }
    else if (turn < 10) {
        NSLog(@"Rank: Average.");
    }
    else if (turn < 20) {
        NSLog(@"Rank: Not great.");
    }
    else {
        NSLog(@"Rank: A trained monkey.");
    }
    return 0;
}
