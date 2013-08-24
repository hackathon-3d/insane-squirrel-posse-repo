//
//  KUMAppDelegate.m
//  Kids: The Users Manual
//
//  Created by admin on 8/23/13.
//  Copyright (c) 2013 worldquest.us. All rights reserved.
//

#import "KUMAppDelegate.h"

@implementation KUMAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    _dataDictionary = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Datafile" ofType:@"plist"]];
    return YES;
}

@end
