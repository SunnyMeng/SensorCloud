//
//  SMModel.m
//  SensorCloud
//
//  Created by Meng PengFei on 1/10/14.
//  Copyright (c) 2014 SunnyMeng. All rights reserved.
//

#import "SMModel.h"

@implementation SMModel

@synthesize idString      = _idString;
@synthesize iconURL       = _iconURL;
@synthesize iconForDetail = _iconForDetail;
@synthesize name          = _name;

- (void)dealloc
{
    [_idString      release];
    [_iconURL       release];
    [_iconForDetail release];
    [_name          release];
    
    [super dealloc];
}


@end
