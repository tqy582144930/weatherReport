//
//  everyHourView.h
//  ios天气预报
//
//  Created by tuqiangyao on 2018/8/16.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface everyHourView : UIView
@property (nonatomic, strong) UILabel *timeLabel;
@property (nonatomic, strong) UIImageView *weatherImageView;
@property (nonatomic, strong) UILabel *temperatureLabel;

- (instancetype) initWithHour:(NSString *)hourString andWeather:(NSString *)weatherString andTemperature:(NSString *)temperatureString;
@end
