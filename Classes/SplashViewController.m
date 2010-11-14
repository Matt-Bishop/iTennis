    //
//  SplashViewController.m
//  iTennis
//
//  Created by Matt Bishop on 11/14/10.
//  Copyright 2010 iphone App development club. All rights reserved.
//

#import "SplashViewController.h"


@implementation SplashViewController
@synthesize timer,splashImageView,viewController;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
	//Init the view
	CGRect appFrame = [[UIScreen mainScreen] applicationFrame];
	UIView *view = [[UIView alloc] initWithFrame:appFrame];
	view.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
	self.view = view;
	[view release];
	
	splashImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Splash.png"]];
	splashImageView.frame = CGRectMake(0, 0, 320, 480);
	[self.view addSubview:splashImageView];
	
	viewController = [[iTennisViewController alloc] initWithNibName:@"iTennisViewController" bundle:[NSBundle mainBundle]];
	viewController.view.alpha = 0.0;
	[self.view addSubview:viewController.view];
	
	timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(fadeScreen) userInfo:nil repeats:NO];
}

- (void) fadeScreen{
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.75];
	[UIView setAnimationDelegate:self];
	[UIView setAnimationDidStopSelector:@selector(finishedFading)];
	self.view.alpha = 0.0;
	[UIView commitAnimations];
}

- (void) finishedFading{
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.75];
	self.view.alpha = 1.0;
	viewController.view.alpha = 1.0;
	[UIView commitAnimations];
	[splashImageView removeFromSuperview];
}

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
