//
//  SCPostViewController.h
//  Social Center
//
//  Created by Candan BÖLÜKBAŞ on 2 Aug.
//  Copyright (c) 2012 T.C. Cumhurbaşkanlığı - BTB. All rights reserved.
//

#import "SCBaseViewController.h"

@interface SCPostViewController : SCBaseViewController<UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextViewDelegate>
- (IBAction)sendButtonClicked:(UIButton *)sender;
- (IBAction)openMenu:(UIButton *)sender;
- (IBAction)handleUIImageViewTouch:(UITapGestureRecognizer *)sender;
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info;
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker;
- (BOOL) textFieldShouldReturn:(UITextField *)textField;
@property (unsafe_unretained, nonatomic) IBOutlet UIButton *sendButton;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *postImageView;

- (IBAction)balllonItemClicked:(UIButton *)sender;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *backgroundImageViewer;
@property (unsafe_unretained, nonatomic) IBOutlet UITextView *commentTextView;

@property (unsafe_unretained, nonatomic) IBOutlet UITextField *titleTextField;
@property (nonatomic, strong) NSMutableDictionary *socialNetworksSubmissions;

@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *alertBackgroundImageView;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *alertCenterImageView;

@property (unsafe_unretained, nonatomic) IBOutlet UILabel *alertCenterLabel;

@end
