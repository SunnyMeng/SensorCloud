//
//  SMModel.h
//  SensorCloud
//
//  Created by Meng PengFei on 1/10/14.
//  Copyright (c) 2014 SunnyMeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SMModel : NSObject

@property (nonatomic, copy) NSString * idString;
@property (nonatomic, copy) NSString * iconURL;                     //small icon
@property (nonatomic, copy) NSString * iconForDetail;               //big icon
@property (nonatomic, copy) NSString * name;

@end
