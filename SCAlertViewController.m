//
//  SCAlertViewController.m
//  Social Center
//
//  Created by Candan BÖLÜKBAŞ on 4 Aug.
//  Copyright (c) 2012 T.C. Cumhurbaşkanlığı - BTB. All rights reserved.
//

#import "SCAlertViewController.h"

@interface SCAlertViewController ()

@end

@implementation SCAlertViewController
@synthesize centerImageView;
@synthesize centerLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setCenterImageView:nil];
    [self setCenterLabel:nil];
    [super viewDidUnload];
    
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
