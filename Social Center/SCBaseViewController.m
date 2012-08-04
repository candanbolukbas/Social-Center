//
//  SCBaseViewController.m
//  Social Center
//
//  Created by Candan BÖLÜKBAŞ on 2 Aug.
//  Copyright (c) 2012 T.C. Cumhurbaşkanlığı - BTB. All rights reserved.
//

#import "SCBaseViewController.h"
#import "SCMenuViewController.h"

@interface SCBaseViewController ()

@end

@implementation SCBaseViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	UITapGestureRecognizer *twoFingersTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(twoFingerTouchAction)];
	[twoFingersTap setNumberOfTapsRequired:1];
	[twoFingersTap setNumberOfTouchesRequired:2];
	[self.view addGestureRecognizer:twoFingersTap];
    self.view.multipleTouchEnabled = YES;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (IBAction)twoFingerTouchAction
{
    SCMenuViewController *mv = [[SCMenuViewController alloc] init];
    mv.view.opaque = NO;
    mv.view.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.6f];
    self.modalPresentationStyle = UIModalPresentationCurrentContext;
    [self presentModalViewController:mv animated:YES];
}


@end
