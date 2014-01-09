//
//  SMWebService.m
//  SensorCloud
//
//  Created by Meng PengFei on 1/9/14.
//  Copyright (c) 2014 SunnyMeng. All rights reserved.
//

#import "SMWebService.h"

@implementation SMWebService

@synthesize delegate            = _delegate;

- (void)dealloc
{
    _delegate = nil;
    [[TTURLRequestQueue mainQueue] cancelRequestsWithDelegate:self];
    
    [super dealloc];
}

@end
