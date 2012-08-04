//
//  SCViewController.m
//  Social Center
//
//  Created by Candan BÖLÜKBAŞ on 2 Aug.
//  Copyright (c) 2012 T.C. Cumhurbaşkanlığı - BTB. All rights reserved.
//

#import "SCViewController.h"
#import "SCMenuViewController.h"

@interface SCViewController ()

@end

@implementation SCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)showMenu:(UIButton *)sender 
{
    SCMenuViewController *mv = [[SCMenuViewController alloc] init];
    mv.view.opaque = NO;
    mv.view.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.6f];
    self.modalPresentationStyle = UIModalPresentationCurrentContext;
    [self presentModalViewController:mv animated:YES];
}
@end
