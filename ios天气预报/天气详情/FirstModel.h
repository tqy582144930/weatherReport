//
//  FirstModel.h
//  ios天气预报
//
//  Created by tuqiangyao on 2018/8/14.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FirstModel : NSObject
@property (nonatomic, strong) NSString *locationString;
@property (nonatomic, strong) NSString *weatherString;
@property (nonatomic, strong) NSString *nowTemperatureString;
@property (nonatomic, strong) NSString *whatDayString;
@property (nonatomic, strong) NSString *maxTemperatureString;
@property (nonatomic, strong) NSString *minTemperatureString;
@end
