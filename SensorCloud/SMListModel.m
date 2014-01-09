//
//  SMListModel.m
//  SensorCloud
//
//  Created by Meng PengFei on 1/10/14.
//  Copyright (c) 2014 SunnyMeng. All rights reserved.
//

#import "SMListModel.h"

@implementation SMListModel

@synthesize items              = _items;
@synthesize hasMore            = _hasMore;
@synthesize start              = _start;
@synthesize max                = _max;
@synthesize lastNumber         = _lastNumber;
@synthesize firstNumber        = _firstNumber;
@synthesize lastNumberString   = _lastNumberString;
@synthesize firstNumberString  = _firstNumberString;
@synthesize queryDirectionType = _queryDirectionType;

- (void)dealloc
{
    [_items              release];
    [_queryDirectionType release];
    [_lastNumberString   release];
    [_firstNumberString  release];
    [super dealloc];
}

- (NSMutableArray *)items{
    if (_items == nil) {
        self.items = [NSMutableArray arrayWithCapacity:1];
    }
    
    return _items;
}

@end
