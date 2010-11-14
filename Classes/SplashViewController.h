//
//  SplashViewController.h
//  iTennis
//
//  Created by Matt Bishop on 11/14/10.
//  Copyright 2010 iphone App development club. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iTennisViewController.h"


@interface SplashViewController : UIViewController {
	NSTimer *timer;
	UIImageView *splashImageView;
	
	iTennisViewController *viewController;
}

@property(nonatomic,retain) NSTimer *timer;
@property(nonatomic,retain)UIImageView *splashImageView;
@property(nonatomic,retain) iTennisViewController *viewController;

@end
