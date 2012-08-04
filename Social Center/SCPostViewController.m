//
//  SCPostViewController.m
//  Social Center
//
//  Created by Candan BÖLÜKBAŞ on 2 Aug.
//  Copyright (c) 2012 T.C. Cumhurbaşkanlığı - BTB. All rights reserved.
//

#import "SCPostViewController.h"
#import "SCGlobals.h"

@interface SCPostViewController ()

@end

@implementation SCPostViewController
@synthesize sendButton;
@synthesize postImageView;
@synthesize backgroundImageViewer;
@synthesize commentTextView;
@synthesize titleTextField;
@synthesize socialNetworksSubmissions;

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
    
    socialNetworksSubmissions = [[NSMutableDictionary alloc] initWithObjectsAndKeys: 
                                 @"0", @"1", 
                                 @"0", @"2", 
                                 @"0", @"3", 
                                 @"0", @"4", 
                                 @"0", @"5", 
                                 @"0", @"6", 
                                 @"0", @"7", 
                                 @"0", @"8", 
                                 @"0", @"9", 
                                 @"0", @"10", 
                                 nil];
    // Do any additional setup after loading the view from its nib.
    /*UITapGestureRecognizer *twoFingerTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTwoFingerTap)];
    [twoFingerTap setNumberOfTapsRequired:2];
    UITextView *tv = (UITextView *)[self.view viewWithTag:6];
    [tv addGestureRecognizer:twoFingerTap];*/
    
    //UITextField *tf = (UITextField *)[self.view viewWithTag:4];
    //[tf resignFirstResponder];
}

-(void)handleTwoFingerTap{
    //handle tap in here 
    [self twoFingerTouchAction];
}

- (void)viewDidUnload
{
    [self setTitleTextField:nil];
    [self setCommentTextView:nil];
    [self setSocialNetworksSubmissions:nil];
    [self setBackgroundImageViewer:nil];
    [self setCommentTextView:nil];
    [self setSendButton:nil];
    [self setPostImageView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)textViewDidBeginEditing:(UITextView *)textView
{
    [UIView animateWithDuration:0.3/1.5 animations:^{
        UIImage *commentWriteBackground = [UIImage imageNamed:@"wood_post_2.png"];
        [backgroundImageViewer setImage:commentWriteBackground];
        commentTextView.frame = CGRectMake(10, 100, 300, 135);  
        [sendButton setTitle:@"Next" forState:UIControlStateNormal];
        [sendButton setTitle:@"Next" forState:UIControlStateHighlighted];
        [postImageView setUserInteractionEnabled:NO];
        [postImageView setHidden:YES];
    }];
}
- (void)textViewDidEndEditing:(UITextView *)textView
{
}

- (IBAction)sendButtonClicked:(UIButton *)sender 
{
    if([sender.currentTitle isEqualToString:@"Next"])
    {
        [commentTextView resignFirstResponder];
        [UIView animateWithDuration:0.3/1.5 animations:^{
            UIImage *commentWriteBackground = [UIImage imageNamed:@"wood_post_1.png"];
            [backgroundImageViewer setImage:commentWriteBackground];
            commentTextView.frame = CGRectMake(147, 85, 166, 246);  
            [sendButton setTitle:@"Send" forState:UIControlStateNormal];
            [sendButton setTitle:@"Send" forState:UIControlStateHighlighted];
            [postImageView setUserInteractionEnabled:YES];
            [postImageView setHidden:NO];
        }];
    }
}

- (IBAction)openMenu:(UIButton *)sender 
{
    [self twoFingerTouchAction];
}

- (IBAction)handleUIImageViewTouch:(UITapGestureRecognizer *)sender 
{
    if(sender.numberOfTouches == 2)
        [self twoFingerTouchAction];
    
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    imagePicker.delegate = self;
    imagePicker.allowsEditing = YES;
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentModalViewController:imagePicker animated:YES];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImageView *photoUIImageView = (UIImageView *)[super.view viewWithTag:5];
    UIImage *image = [info objectForKey:UIImagePickerControllerEditedImage];
    //UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    photoUIImageView.image = image;
    [picker dismissModalViewControllerAnimated:YES];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissModalViewControllerAnimated:YES];
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField
{    
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)balllonItemClicked:(UIButton *)sender 
{
    SCGlobals *globals = [[SCGlobals alloc] init];
    NSString *theKey = [NSString stringWithFormat:@"%d", sender.tag-10];    
    
    if([[socialNetworksSubmissions objectForKey:theKey] isEqualToString:@"1"])
    {
        [socialNetworksSubmissions setValue:@"0" forKey:theKey];
        [sender setImage:[UIImage imageNamed:[NSString stringWithFormat:globals.imageNameFormatBalloonSephia, [globals.socialNetworksInternalNames objectForKey:theKey]]] forState:UIControlStateNormal];
    }
    else 
    {
        [socialNetworksSubmissions setValue:@"1" forKey:theKey];
        [sender setImage:[UIImage imageNamed:[NSString stringWithFormat:globals.imageNameFormatBalloonColor, [globals.socialNetworksInternalNames objectForKey:theKey]]] forState:UIControlStateNormal];
    }
}

@end




