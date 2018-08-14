//
//  fifthTableViewCell.m
//  ios天气预报
//
//  Created by tuqiangyao on 2018/8/13.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "fifthTableViewCell.h"

@implementation fifthTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style  reuseIdentifier:reuseIdentifier];
    if (self) {
        _firstLabel = [[UILabel alloc] init];
        _firstLabel.textColor = [UIColor whiteColor];
        _firstLabel.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:_firstLabel];
        
        _secondLabel = [[UILabel alloc] init];
        _secondLabel.textColor = [UIColor whiteColor];
        _secondLabel.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:_secondLabel];
        
        _thridLabel = [[UILabel alloc] init];
        _thridLabel.textColor = [UIColor whiteColor];
        _thridLabel.font = [UIFont systemFontOfSize:35];
        [self.contentView addSubview:_thridLabel];
        
        _fourthLabel = [[UILabel alloc] init];
        _fourthLabel.textColor = [UIColor whiteColor];
        _fourthLabel.font = [UIFont systemFontOfSize:35];
        [self.contentView addSubview:_fourthLabel];
    }
    return self;
}

- (void) layoutSubviews {
    [super layoutSubviews];
    _firstLabel.frame = CGRectMake(15, 10, 80, 20);
    _secondLabel.frame = CGRectMake(200, 10, 90, 20);
    _thridLabel.frame = CGRectMake(15, 35, 150, 25);
    _fourthLabel.frame = CGRectMake(200, 35, 150, 25);
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
