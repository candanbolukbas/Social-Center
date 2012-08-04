//
//  SCGlobals.h
//  Social Center
//
//  Created by Candan BÖLÜKBAŞ on 3 Aug.
//  Copyright (c) 2012 T.C. Cumhurbaşkanlığı - BTB. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SCGlobals : NSObject
{
    NSDictionary *socialNetworks;
    NSDictionary *socialNetworksInternalNames;
    NSString *imageNameFormatBalloonSephia;
    NSString *imageNameFormatBalloonColor;
}

@property (nonatomic, strong) NSDictionary *socialNetworks;
@property (nonatomic, strong) NSDictionary *socialNetworksInternalNames;
@property (nonatomic, strong) NSString *imageNameFormatBalloonSephia;
@property (nonatomic, strong)NSString *imageNameFormatBalloonColor;

//extern NSString *imageNameFormatBalloonSephia;
//extern NSString *imageNameFormatBalloonColor;

@end
