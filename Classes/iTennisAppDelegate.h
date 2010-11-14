//
//  iTennisAppDelegate.h
//  iTennis
//
//  Created by Matt Bishop on 11/11/10.
//  Copyright 2010 iphone App development club. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SplashViewController.h"



@interface iTennisAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SplashViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SplashViewController *viewController;

@end

