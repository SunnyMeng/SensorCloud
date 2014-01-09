//
//  SMCommon.h
//  SensorCloud
//
//  Created by Meng PengFei on 1/9/14.
//  Copyright (c) 2014 SunnyMeng. All rights reserved.
//

#ifndef SensorCloud_SMCommon_h
#define SensorCloud_SMCommon_h

#endif

#define SYSTEM_VERSION                             [[UIDevice currentDevice]systemVersion].floatValue

#define IsViewHeight568h  [[UIScreen mainScreen] bounds].size.height == 568
#define ScreenHeight      [[UIScreen mainScreen] bounds].size.height
#define ApplicationHeight (([[UIDevice currentDevice].systemVersion floatValue])<7.0?([[UIScreen mainScreen] applicationFrame].size.height):([[UIScreen mainScreen] applicationFrame].size.height))
#define ApplicationWidth  [[UIScreen mainScreen] applicationFrame].size.width
#define ImageByHeight(image1,image2)  IsViewHeight568h?image2:image1     //image2-568
#define RelativeHeight(originHeight)  originHeight*(IsViewHeight568h?(ScreenHeight/480):1)
#define SystemVersion     [[UIDevice currentDevice].systemVersion floatValue]
#define UnloadView()        if (SystemVersion > 6.0) {\
                                if ([self isViewLoaded] && self.view.window == nil) {\
                                [self viewDidUnload];\
                                self.view = nil;\
                                }\
                                }

#define Height_NavigationBar        44
#define Height_TabBar               49

