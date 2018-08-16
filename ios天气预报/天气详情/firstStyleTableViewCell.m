//
//  firstStyleTableViewCell.m
//  ios天气预报
//
//  Created by tuqiangyao on 2018/8/13.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "firstStyleTableViewCell.h"

@implementation firstStyleTableViewCell

- (id) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _locationLabel = [[UILabel alloc] init];
        _locationLabel.font = [UIFont systemFontOfSize:35];
        _locationLabel.textColor = [UIColor whiteColor];
        _locationLabel.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:_locationLabel];
        
        _weatherLabel = [[UILabel alloc] init];
        _weatherLabel.font = [UIFont systemFontOfSize:20];
        _weatherLabel.textColor = [UIColor whiteColor];
        _weatherLabel.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:_weatherLabel];

        _nowTemperatureLabel = [[UILabel alloc] init];
        _nowTemperatureLabel.font = [UIFont systemFontOfSize:90];
        _nowTemperatureLabel.textColor = [UIColor whiteColor];
        _nowTemperatureLabel.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:_nowTemperatureLabel];

        _whatDayLabel = [[UILabel alloc] init];
        _whatDayLabel.font = [UIFont systemFontOfSize:22];
        _whatDayLabel.textColor = [UIColor whiteColor];
        [self.contentView addSubview:_whatDayLabel];

        _maxTemperatureLable = [[UILabel alloc] init];
        _maxTemperatureLable.font = [UIFont systemFontOfSize:20];
        _maxTemperatureLable.textColor = [UIColor whiteColor];
        [self.contentView addSubview:_maxTemperatureLable];

        _minTemperatureLable = [[UILabel alloc] init];
        _minTemperatureLable.font = [UIFont systemFontOfSize:20];
        _minTemperatureLable.textColor = [UIColor whiteColor];
        [self.contentView addSubview:_minTemperatureLable];

        _dayLabel = [[UILabel alloc] init];
        _dayLabel.text = @"今天";
        _dayLabel.font = [UIFont systemFontOfSize:16];
        _dayLabel.textColor = [UIColor whiteColor];
        [self.contentView addSubview:_dayLabel];
    }
    return self;
}

- (void) layoutSubviews {
    [super layoutSubviews];
    _locationLabel.frame = CGRectMake(145, 50, 120, 30);
    _weatherLabel.frame = CGRectMake(165, 85, 80, 30);
    _nowTemperatureLabel.frame = CGRectMake(145, 115, 150, 150);
    _whatDayLabel.frame = CGRectMake(15, 255, 80, 40);
    _dayLabel.frame = CGRectMake(85, 262, 40, 30);
    _maxTemperatureLable.frame = CGRectMake(335, 260, 30, 30);
    _minTemperatureLable.frame = CGRectMake(380, 260, 30, 30);
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
