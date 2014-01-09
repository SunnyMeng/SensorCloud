//
//  SMErrorModel.h
//  SensorCloud
//
//  Created by Meng PengFei on 1/10/14.
//  Copyright (c) 2014 SunnyMeng. All rights reserved.
//

#import "SMModel.h"

@interface SMErrorModel : SMModel

@property (nonatomic, retain) NSError  * error;
@property (nonatomic, retain) NSString * responseString;

- (id)jsonValueForResponseString;

@end
