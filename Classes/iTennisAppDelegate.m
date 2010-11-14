//
//  iTennisAppDelegate.m
//  iTennis
//
//  Created by Matt Bishop on 11/11/10.
//  Copyright 2010 iphone App development club. All rights reserved.
//

#import "iTennisAppDelegate.h"


@implementation iTennisAppDelegate

@synthesize window;
@synthesize viewController;



- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    viewController = [[SplashViewController alloc] init];
    // Override point for customization after application launch.
    [window addSubview:[viewController view]];
    [window makeKeyAndVisible];

   
}





- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
