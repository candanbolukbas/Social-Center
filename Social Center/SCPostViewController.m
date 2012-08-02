//
//  SCPostViewController.m
//  Social Center
//
//  Created by Candan BÖLÜKBAŞ on 2 Aug.
//  Copyright (c) 2012 T.C. Cumhurbaşkanlığı - BTB. All rights reserved.
//

#import "SCPostViewController.h"

@interface SCPostViewController ()

@end

@implementation SCPostViewController

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
    /*UITapGestureRecognizer *twoFingerTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTwoFingerTap)];
    [twoFingerTap setNumberOfTapsRequired:2];
    UITextView *tv = (UITextView *)[self.view viewWithTag:3];
    [tv addGestureRecognizer:twoFingerTap];*/
}

-(void)handleTwoFingerTap{
    //handle tap in here 
    [self twoFingerTouchAction];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)handleUITextViewTouch:(UITapGestureRecognizer *)sender 
{
    NSLog(@"Number of touches: %d", sender.numberOfTouches);
    
    if(sender.numberOfTouches == 2)
        [self twoFingerTouchAction];
}
@end




