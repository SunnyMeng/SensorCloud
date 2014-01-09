//
//  SMListModel.h
//  SensorCloud
//
//  Created by Meng PengFei on 1/10/14.
//  Copyright (c) 2014 SunnyMeng. All rights reserved.
//

#import "SMModel.h"

@interface SMListModel : SMModel

@property (nonatomic, retain) NSMutableArray * items;
@property (nonatomic, assign) BOOL             hasMore;
@property (nonatomic, assign) int              start;
@property (nonatomic, assign) int              max;                     //每次服务器返回的最大数据数量
@property (nonatomic, assign) long long        lastNumber;
@property (nonatomic, assign) long long        firstNumber;
@property (nonatomic, copy)   NSString    *    lastNumberString;
@property (nonatomic, copy)   NSString    *    firstNumberString;
@property (nonatomic, copy)   NSString       * queryDirectionType;      //数据查询方向，Next | Previous


@end
