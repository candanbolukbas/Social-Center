//
//  SCAppDelegate.h
//  Social Center
//
//  Created by Candan BÖLÜKBAŞ on 2 Aug.
//  Copyright (c) 2012 T.C. Cumhurbaşkanlığı - BTB. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SCViewController;

@interface SCAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) SCViewController *viewController;

@end
