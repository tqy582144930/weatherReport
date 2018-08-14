//
//  thridStyleTableViewCell.m
//  ios天气预报
//
//  Created by tuqiangyao on 2018/8/13.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "thridStyleTableViewCell.h"

@implementation thridStyleTableViewCell

- (id) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _dayLabel = [[UILabel alloc] init];
        _dayLabel.textColor = [UIColor whiteColor];
        _dayLabel.font = [UIFont systemFontOfSize:22];
        [self.contentView addSubview:_dayLabel];
        
        _maxTemperatureLabel = [[UILabel alloc] init];
        _maxTemperatureLabel.textColor = [UIColor whiteColor];
        _maxTemperatureLabel.font = [UIFont systemFontOfSize:20];
        [self.contentView addSubview:_maxTemperatureLabel];
        
        _minTemperatureLabel = [[UILabel alloc] init];
        _minTemperatureLabel.textColor = [UIColor whiteColor];
        _minTemperatureLabel.font = [UIFont systemFontOfSize:20];
        [self.contentView addSubview:_minTemperatureLabel];
        
        _weatherImageView = [[UIImageView alloc] init];
        [self.contentView addSubview:_weatherImageView];
        
    }
    return self;
}

- (void) layoutSubviews {
    [super layoutSubviews];
    _dayLabel.frame = CGRectMake(15, 10, 120, 35);
    _minTemperatureLabel.frame = CGRectMake(380, 10, 30, 30);
    _maxTemperatureLabel.frame = CGRectMake(335, 10, 30, 30);
    _weatherImageView.frame = CGRectMake(200, 10, 25, 25);
    
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
