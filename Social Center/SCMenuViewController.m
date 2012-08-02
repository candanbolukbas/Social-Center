//
//  SCMenuViewController.m
//  Social Center
//
//  Created by Candan BÖLÜKBAŞ on 2 Aug.
//  Copyright (c) 2012 T.C. Cumhurbaşkanlığı - BTB. All rights reserved.
//

#import "SCMenuViewController.h"
#import "SCPostViewController.h"
#import "SCViewController.h"

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
    //name.center = CGPointMake(self.view.center.x + radius * cos(angleRadius) * 0.3, self.view.center.y - radius * sin(angleRadius) * 0.3);
    //[name sizeToFit];
    name.frame = CGRectMake(self.view.center.x -50 + radius * cos(angleRadius) * 0.64, self.view.center.y - 10 - radius *sin(angleRadius) * 0.64, 100, 20);
    /*if(sender.center.y < 220)
        name.frame = CGRectMake(sender.center.x-40, sender.center.y - 35, 80, 20);
    else
        name.frame = CGRectMake(sender.center.x-40, sender.center.y + 12, 80, 20);*/
    name.backgroundColor = [UIColor clearColor];
    name.opaque = NO;
    
    if(sender.tag > 6)
    {
        name.textAlignment = UITextAlignmentRight;
        name.transform = CGAffineTransformMakeRotation(M_PI-angleRadius);
    }
    else 
    {
        
        name.textAlignment = UITextAlignmentLeft;
        name.transform = CGAffineTransformMakeRotation(-angleRadius);
    }
    name.tag = sender.tag + 20;
    [self.view addSubview:name];
    
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
        UILabel *label = (UILabel *)[self.view viewWithTag:i+20];
        [label removeFromSuperview];
        [self animateButtonSwap:button isFinished:i==12];
    }
    
	//[self dismissModalViewControllerAnimated:NO];
}

- (IBAction)menuButtonClicked:(UIButton *)sender 
{
    if(sender.tag == 12)
    {
        SCPostViewController *pv = [[SCPostViewController alloc] init];
        [self presentModalViewController:pv animated:YES];
    }
    else
    {
        SCViewController *vc = [[SCViewController alloc] init];
        [self presentModalViewController:vc animated:YES];
    }
}

@end




