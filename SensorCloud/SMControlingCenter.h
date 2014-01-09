//
//  SMControlingCenter.h
//  SensorCloud
//
//  Created by Meng PengFei on 1/9/14.
//  Copyright (c) 2014 SunnyMeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SMControlingCenter : NSObject

+ (SMControlingCenter *)sharedInstance;

//获取根试图控制器
- (UIViewController *)rootViewController;

@end
