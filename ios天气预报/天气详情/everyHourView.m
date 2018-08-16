//
//  everyHourView.m
//  ios天气预报
//
//  Created by tuqiangyao on 2018/8/16.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "everyHourView.h"

@implementation everyHourView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype) initWithHour:(NSString *)hourString andWeather:(NSString *)weatherString andTemperature:(NSString *)temperatureString
{
    self = [super init];
    if (self) {
        _timeLabel = [[UILabel alloc] init];
        _timeLabel.textColor = [UIColor whiteColor];
        _timeLabel.font = [UIFont systemFontOfSize:20];
        _timeLabel.textAlignment = NSTextAlignmentCenter;
        _timeLabel.frame = CGRectMake(15, 10, 80, 30);
        _timeLabel.text = hourString;
        [self addSubview:_timeLabel];
        
        _weatherImageView = [[UIImageView alloc] init];
        _weatherImageView.frame = CGRectMake(40, 50, 30, 30);
        _weatherImageView.image = [UIImage imageNamed:weatherString];
        [self addSubview:_weatherImageView];
        
        _temperatureLabel = [[UILabel alloc] init];
        _temperatureLabel.textAlignment = NSTextAlignmentCenter;
        _temperatureLabel.textColor = [UIColor whiteColor];
        _temperatureLabel.text = temperatureString;
        _temperatureLabel.font = [UIFont systemFontOfSize:20];
        _temperatureLabel.frame = CGRectMake(15, 90, 80, 30);
        [self addSubview:_temperatureLabel];
    }
    
    return self;
}

@end
