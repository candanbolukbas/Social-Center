//
//  SCGlobals.m
//  Social Center
//
//  Created by Candan BÖLÜKBAŞ on 3 Aug.
//  Copyright (c) 2012 T.C. Cumhurbaşkanlığı - BTB. All rights reserved.
//

#import "SCGlobals.h"

//NSString *imageNameFormatBalloonSephia = @"balloon_@_sephia.png";
//NSString *imageNameFormatBalloonColor = @"balloon_@.png";

@implementation SCGlobals

@synthesize socialNetworks, socialNetworksInternalNames;
@synthesize imageNameFormatBalloonColor, imageNameFormatBalloonColor2x, imageNameFormatBalloonSephia;

-(id)init
{
    self = [super init];
    if(self)
    {
        socialNetworks = [[NSDictionary alloc] initWithObjectsAndKeys: 
                          @"Facebook", @"1", 
                          @"Twitter", @"2", 
                          @"Google+", @"3", 
                          @"LinkedIn", @"4", 
                          @"Instagram", @"5", 
                          @"tumblr", @"6", 
                          @"Flickr", @"7", 
                          @"Foursquare", @"8", 
                          @"Blogger", @"9", 
                          @"Wordpress", @"10", 
                          nil];
        
        socialNetworksInternalNames = [[NSDictionary alloc] initWithObjectsAndKeys: 
                          @"facebook", @"1", 
                          @"twitter", @"2", 
                          @"googlepluswhite", @"3", 
                          @"linkedin", @"4", 
                          @"instagram", @"5", 
                          @"tumblr", @"6", 
                          @"flickr", @"7", 
                          @"foursquare", @"8", 
                          @"blogger", @"9", 
                          @"wordpress", @"10", 
                          nil];
        
        imageNameFormatBalloonColor = @"balloon_%@.png";
        imageNameFormatBalloonColor2x = @"balloon_%@@2x.png";
        imageNameFormatBalloonSephia = @"balloon_%@_sephia.png";
    }
    return self;
}


@end
