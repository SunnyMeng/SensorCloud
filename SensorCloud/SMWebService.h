//
//  SMWebService.h
//  SensorCloud
//
//  Created by Meng PengFei on 1/9/14.
//  Copyright (c) 2014 SunnyMeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SMWebServiceDelegate ;

@interface SMWebService : NSObject

@property (nonatomic, assign) id<SMWebServiceDelegate> delegate;

@end

@protocol SMWebServiceDelegate <NSObject>



@end

