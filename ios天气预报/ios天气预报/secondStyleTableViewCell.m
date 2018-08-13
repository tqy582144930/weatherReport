//
//  secondStyleTableViewCell.m
//  ios天气预报
//
//  Created by tuqiangyao on 2018/8/13.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "secondStyleTableViewCell.h"

@implementation secondStyleTableViewCell

- (id) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _scrollView = [[UIScrollView alloc] init];
        _scrollView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200);
        _scrollView.bounces = YES;
        _scrollView.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width*2, 200);
        _scrollView.pagingEnabled = NO;
        _scrollView.showsHorizontalScrollIndicator = NO;
        _scrollView.alwaysBounceHorizontal = YES;
        [self.contentView addSubview:_scrollView];
        
        _timeLabel1 = [[UILabel alloc] init];
        _timeLabel1.text = @"上午0时";
        [_scrollView addSubview:_timeLabel1];
        
        _timeLabel2 = [[UILabel alloc] init];
        _timeLabel2.text = @"上午3时";
        [_scrollView addSubview:_timeLabel2];
        
        _timeLabel3 = [[UILabel alloc] init];
        _timeLabel3.text = @"上午6时";
        [_scrollView addSubview:_timeLabel3];
        
        _timeLabel4 = [[UILabel alloc] init];
        _timeLabel4.text = @"上午9时";
        [_scrollView addSubview:_timeLabel4];
        
        _timeLabel5 = [[UILabel alloc] init];
        _timeLabel5.text = @"上午12时";
        [_scrollView addSubview:_timeLabel5];
        
        _timeLabel6 = [[UILabel alloc] init];
        _timeLabel6.text = @"下午3时";
        [_scrollView addSubview:_timeLabel6];
        
        _timeLabel7 = [[UILabel alloc] init];
        _timeLabel7.text = @"下午6时";
        [_scrollView addSubview:_timeLabel7];
        
        _timeLabel8 = [[UILabel alloc] init];
        _timeLabel8.text = @"下午9时";
        [_scrollView addSubview:_timeLabel8];
        
        _temperatureLabel1 = [[UILabel alloc] init];
        _temperatureLabel1.backgroundColor = [UIColor redColor];
        [_scrollView addSubview:_temperatureLabel1];
        
        _temperatureLabel2 = [[UILabel alloc] init];
        _temperatureLabel2.backgroundColor = [UIColor redColor];
        [_scrollView addSubview:_temperatureLabel2];
        
        _temperatureLabel3 = [[UILabel alloc] init];
        _temperatureLabel3.backgroundColor = [UIColor redColor];
        [_scrollView addSubview:_temperatureLabel3];
        
        _temperatureLabel4 = [[UILabel alloc] init];
        _temperatureLabel4.backgroundColor = [UIColor redColor];
        [_scrollView addSubview:_temperatureLabel4];
        
        _temperatureLabel5 = [[UILabel alloc] init];
        _temperatureLabel5.backgroundColor = [UIColor redColor];
        [_scrollView addSubview:_temperatureLabel5];
        
        _temperatureLabel6 = [[UILabel alloc] init];
        _temperatureLabel6.backgroundColor = [UIColor redColor];
        [_scrollView addSubview:_temperatureLabel6];
        
        _temperatureLabel7 = [[UILabel alloc] init];
        _temperatureLabel7.backgroundColor = [UIColor redColor];
        [_scrollView addSubview:_temperatureLabel7];
        
        _temperatureLabel8 = [[UILabel alloc] init];
        _temperatureLabel8.backgroundColor = [UIColor redColor];
        [_scrollView addSubview:_temperatureLabel8];
        
        _weatherImageView1 = [[UIImageView alloc] init];
        _weatherImageView1.backgroundColor = [UIColor redColor];
        [_scrollView addSubview:_weatherImageView1];
        
        _weatherImageView2 = [[UIImageView alloc] init];
        _weatherImageView2.backgroundColor = [UIColor redColor];
        [_scrollView addSubview:_weatherImageView2];
        
        _weatherImageView3 = [[UIImageView alloc] init];
        _weatherImageView3.backgroundColor = [UIColor redColor];
        [_scrollView addSubview:_weatherImageView3];
        
        _weatherImageView4 = [[UIImageView alloc] init];
        _weatherImageView4.backgroundColor = [UIColor redColor];
        [_scrollView addSubview:_weatherImageView4];
        
        _weatherImageView5 = [[UIImageView alloc] init];
        _weatherImageView5.backgroundColor = [UIColor redColor];
        [_scrollView addSubview:_weatherImageView5];
        
        _weatherImageView6 = [[UIImageView alloc] init];
        _weatherImageView6.backgroundColor = [UIColor redColor];
        [_scrollView addSubview:_weatherImageView6];
        
        _weatherImageView7 = [[UIImageView alloc] init];
        _weatherImageView7.backgroundColor = [UIColor redColor];
        [_scrollView addSubview:_weatherImageView7];
        
        _weatherImageView8 = [[UIImageView alloc] init];
        _weatherImageView8.backgroundColor = [UIColor redColor];
        [_scrollView addSubview:_weatherImageView8];
        
    }
    return self;
}

- (void) layoutSubviews {
    [super layoutSubviews];
    _timeLabel1.frame = CGRectMake(15, 10, 80, 20);
    _timeLabel2.frame = CGRectMake(105, 10, 80, 20);
    _timeLabel3.frame = CGRectMake(205, 10, 80, 20);
    _timeLabel4.frame = CGRectMake(305, 10, 80, 20);
    _timeLabel5.frame = CGRectMake(405, 10, 80, 20);
    _timeLabel6.frame = CGRectMake(505, 10, 80, 20);
    _timeLabel7.frame = CGRectMake(605, 10, 80, 20);
    _timeLabel8.frame = CGRectMake(705, 10, 80, 20);
    
    _weatherImageView1.frame = CGRectMake(15, 40, 25, 25);
    _weatherImageView2.frame = CGRectMake(105, 40, 25, 25);
    _weatherImageView3.frame = CGRectMake(205, 40, 25, 25);
    _weatherImageView4.frame = CGRectMake(305, 40, 25, 25);
    _weatherImageView5.frame = CGRectMake(405, 40, 25, 25);
    _weatherImageView6.frame = CGRectMake(505, 40, 25, 25);
    _weatherImageView7.frame = CGRectMake(605, 40, 25, 25);
    _weatherImageView8.frame = CGRectMake(705, 40, 25, 25);
    
    _temperatureLabel1.frame = CGRectMake(15, 85, 80, 20);
    _temperatureLabel2.frame = CGRectMake(105, 85, 80, 20);
    _temperatureLabel3.frame = CGRectMake(205, 85, 80, 20);
    _temperatureLabel4.frame = CGRectMake(305, 85, 80, 20);
    _temperatureLabel5.frame = CGRectMake(405, 85, 80, 20);
    _temperatureLabel6.frame = CGRectMake(505, 85, 80, 20);
    _temperatureLabel7.frame = CGRectMake(605, 85, 80, 20);
    _temperatureLabel8.frame = CGRectMake(705, 85, 80, 20);
    
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
