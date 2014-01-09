//
//  SMErrorModel.m
//  SensorCloud
//
//  Created by Meng PengFei on 1/10/14.
//  Copyright (c) 2014 SunnyMeng. All rights reserved.
//

#import "SMErrorModel.h"

@implementation SMErrorModel

@synthesize error           = _error;
@synthesize responseString  = _responseString;

- (void)dealloc
{
    [_error            release];
    [_responseString   release];
    [super dealloc];
}

- (id)jsonValueForResponseString{
    id jsonObject = nil;
    if (_responseString) {
        jsonObject =  [[_responseString stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]] JSONValue];
    }
    return jsonObject;
}

@end
