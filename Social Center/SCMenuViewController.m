//
//  SCMenuViewController.m
//  Social Center
//
//  Created by Candan BÖLÜKBAŞ on 2 Aug.
//  Copyright (c) 2012 T.C. Cumhurbaşkanlığı - BTB. All rights reserved.
//

#import "SCMenuViewController.h"
#import "SCPostViewController.h"

@interface SCMenuViewController ()

@end

@implementation SCMenuViewController

- (IBAction)animateButton:(UIButton *)sender angle:(CGFloat)angle
{
    //sender.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.001, 0.001);
    
    [self.view addSubview:sender];
    float radius = 125.0;
    double angleRadius = (angle / 180) * M_PI;
    
    [UIView animateWithDuration:0.3/1.5 animations:^{
        sender.center = CGPointMake(sender.center.x + radius * cos(angleRadius), sender.center.y - radius * sin(angleRadius));
        sender.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.1, 1.1);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.3/2 animations:^{
            //sender.center = CGPointMake(sender.center.x, sender.center.y);
            sender.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.9, 0.9);
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.3/2 animations:^{
                //sender.center = CGPointMake(sender.center.x, sender.center.y + 10);
                sender.transform = CGAffineTransformIdentity;                            
            }];
        }];
    }];
    
    UILabel *name = [[UILabel alloc] init];
    name.text = sender.currentTitle;
    name.textColor = [UIColor whiteColor];
    name.font = [UIFont boldSystemFontOfSize:12];
    //name.center = CGPointMake(sender.center.x - 30, sender.center.y + 20);
    if(sender.center.y < 220)
        name.frame = CGRectMake(sender.center.x-40, sender.center.y - 35, 80, 20);
    else
        name.frame = CGRectMake(sender.center.x-40, sender.center.y + 12, 80, 20);
    name.textAlignment = UITextAlignmentCenter;
    name.backgroundColor = [UIColor clearColor];
    name.opaque = NO;
    //[self.view addSubview:name];
    
}

- (IBAction)animateButtonSwap:(UIButton *)sender isFinished:(BOOL)finished
{
    [UIView animateWithDuration:0.3/1.5 animations:^{
        sender.center = CGPointMake(self.view.center.x, self.view.center.y - 20);
    } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.3/2 animations:^{                
                if(finished)
                    [self dismissModalViewControllerAnimated:YES];                          
            }];
    }];
}

- (void) viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    for(int i=1; i<=12; i++)
    {
        UIButton *button = (UIButton *)[self.view viewWithTag:i];
        [self animateButton:button angle:120-(i*30)];
    }
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

- (IBAction) dismissButtonClicked:(id)sender 
{    
    for(int i=1; i<=12; i++)
    {
        UIButton *button = (UIButton *)[self.view viewWithTag:i];
        [self animateButtonSwap:button isFinished:i==12];
    }
    
	//[self dismissModalViewControllerAnimated:NO];
}

- (IBAction)menuButtonClicked:(UIButton *)sender 
{
    SCPostViewController *pv = [[SCPostViewController alloc] init];
    [self presentModalViewController:pv animated:YES];
}

@end
