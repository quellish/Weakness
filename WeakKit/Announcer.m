//
//  Announcer.m
//  Weakness
//
//  Created by Dan Zinngrabe on 9/25/14.
//  Copyright (c) 2014 Dan Zinngrabe. All rights reserved.
//

#import "Announcer.h"
@import UIKit;

@implementation Announcer

- (void) happy {
    UIAlertView *alert  = [[UIAlertView alloc] initWithTitle:@"Framework" message:@"Framework method executed" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    NSLog(@"Happy");
    [alert show];
}

@end
