//
//  fourthStyleTableViewCell.m
//  ios天气预报
//
//  Created by tuqiangyao on 2018/8/13.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "fourthStyleTableViewCell.h"

@implementation fourthStyleTableViewCell

- (id) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _nameLabel = [[UILabel alloc] init];
        _nameLabel.font = [UIFont systemFontOfSize:20];
        _nameLabel.textColor = [UIColor whiteColor];
        _nameLabel.numberOfLines = 0;
        [self.contentView addSubview:_nameLabel];
    }
    return self;
}

- (void) layoutSubviews {
    _nameLabel.frame = CGRectMake(15, 10, 400, 60);
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
