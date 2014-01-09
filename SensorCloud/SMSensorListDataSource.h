//
//  SMSensorListDataSource.h
//  SensorCloud
//
//  Created by Meng PengFei on 1/10/14.
//  Copyright (c) 2014 SunnyMeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SMSensorListRequestModel : TTURLRequestModel

@property (nonatomic, retain) SMListModel * listModel;

@end

@interface SMSensorListDataSource : TTListDataSource

@end
