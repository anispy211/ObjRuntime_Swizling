//
//  AppDelegate.m
//  Runtime_Swizling
//
//  Created by Aniruddha on 25/03/14.
//  Copyright (c) 2014 Aniruddha. All rights reserved.
//

#import "AppDelegate.h"
#import <objc/message.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Implementation exchange of two method
    
    [self swizle];       //objc_msgSend(self, @selector(swizle));   Message passing in Objective c runtime

    
    //[self performSubtraction];  
    objc_msgSend(self, @selector(performSubtraction)); //  Message passing in Objective c runtime
    
   // the above function calls performAddition selector .It is same as calling [self performSubstraction];
    
    return YES;
}


- (void)performAddition
{
    NSLog(@"+++++++++++++++++++ Addition ++++++++++++++++++");

}

- (void)performSubtraction
{
    NSLog(@"-------------------- Substract -------------------------");
}





- (void)swizle
{
    SEL first = @selector(performAddition);  // First method
    SEL Second = @selector(performSubtraction); // Second method

   // Get Instance method
    Method m1 = class_getInstanceMethod([self class], first);
    Method m2 = class_getInstanceMethod([self class], Second);
    
    // Exchange implementation
    method_exchangeImplementations(m1, m2);
    
}


@end
