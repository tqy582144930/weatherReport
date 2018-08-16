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
        _scrollView.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width*6, 200);
        _scrollView.pagingEnabled = NO;
        _scrollView.showsHorizontalScrollIndicator = NO;
        _scrollView.alwaysBounceHorizontal = YES;
        [self.contentView addSubview:_scrollView];
        
        _timeLabel1 = [[UILabel alloc] init];
        [_scrollView addSubview:_timeLabel1];
        
        _timeLabel2 = [[UILabel alloc] init];
        [_scrollView addSubview:_timeLabel2];
        
        _timeLabel3 = [[UILabel alloc] init];
        [_scrollView addSubview:_timeLabel3];
        
        _timeLabel4 = [[UILabel alloc] init];
        [_scrollView addSubview:_timeLabel4];
        
        _timeLabel5 = [[UILabel alloc] init];
        [_scrollView addSubview:_timeLabel5];
        
        _timeLabel6 = [[UILabel alloc] init];
        [_scrollView addSubview:_timeLabel6];
        
        _timeLabel7 = [[UILabel alloc] init];
        [_scrollView addSubview:_timeLabel7];
        
        _timeLabel8 = [[UILabel alloc] init];
        [_scrollView addSubview:_timeLabel8];
        
        _timeLabel9 = [[UILabel alloc] init];
        [_scrollView addSubview:_timeLabel8];
        
        _timeLabel10 = [[UILabel alloc] init];
        [_scrollView addSubview:_timeLabel8];
        
        _timeLabel11 = [[UILabel alloc] init];
        [_scrollView addSubview:_timeLabel8];
        
        _timeLabel12 = [[UILabel alloc] init];
        [_scrollView addSubview:_timeLabel8];
        
        _timeLabel13 = [[UILabel alloc] init];
        [_scrollView addSubview:_timeLabel8];
        
        _timeLabel14 = [[UILabel alloc] init];
        [_scrollView addSubview:_timeLabel8];
        
        _timeLabel15 = [[UILabel alloc] init];
        [_scrollView addSubview:_timeLabel8];
        
        _timeLabel16 = [[UILabel alloc] init];
        [_scrollView addSubview:_timeLabel8];
        
        _timeLabel17 = [[UILabel alloc] init];
        [_scrollView addSubview:_timeLabel8];
        
        _timeLabel18 = [[UILabel alloc] init];
        [_scrollView addSubview:_timeLabel8];
        
        _timeLabel19 = [[UILabel alloc] init];
        [_scrollView addSubview:_timeLabel8];
        
        _timeLabel20 = [[UILabel alloc] init];
        [_scrollView addSubview:_timeLabel8];
        
        _timeLabel21 = [[UILabel alloc] init];
        [_scrollView addSubview:_timeLabel8];
        
        _timeLabel22 = [[UILabel alloc] init];
        [_scrollView addSubview:_timeLabel8];
        
        _timeLabel23 = [[UILabel alloc] init];
        [_scrollView addSubview:_timeLabel8];
        
        _timeLabel24 = [[UILabel alloc] init];
        [_scrollView addSubview:_timeLabel8];
        
        _temperatureLabel1 = [[UILabel alloc] init];
        [_scrollView addSubview:_temperatureLabel1];
        
        _temperatureLabel2 = [[UILabel alloc] init];
        [_scrollView addSubview:_temperatureLabel2];
        
        _temperatureLabel3 = [[UILabel alloc] init];
        [_scrollView addSubview:_temperatureLabel3];
        
        _temperatureLabel4 = [[UILabel alloc] init];
        [_scrollView addSubview:_temperatureLabel4];
        
        _temperatureLabel5 = [[UILabel alloc] init];
        [_scrollView addSubview:_temperatureLabel5];
        
        _temperatureLabel6 = [[UILabel alloc] init];
        [_scrollView addSubview:_temperatureLabel6];
        
        _temperatureLabel7 = [[UILabel alloc] init];
        [_scrollView addSubview:_temperatureLabel7];
        
        _temperatureLabel8 = [[UILabel alloc] init];
        [_scrollView addSubview:_temperatureLabel8];
        
        _temperatureLabel9 = [[UILabel alloc] init];
        [_scrollView addSubview:_temperatureLabel8];
        
        _temperatureLabel10 = [[UILabel alloc] init];
        [_scrollView addSubview:_temperatureLabel8];
        
        _temperatureLabel11 = [[UILabel alloc] init];
        [_scrollView addSubview:_temperatureLabel8];
        
        _temperatureLabel12 = [[UILabel alloc] init];
        [_scrollView addSubview:_temperatureLabel8];
        
        _temperatureLabel13 = [[UILabel alloc] init];
        [_scrollView addSubview:_temperatureLabel8];
        
        _temperatureLabel14 = [[UILabel alloc] init];
        [_scrollView addSubview:_temperatureLabel8];
        
        _temperatureLabel15 = [[UILabel alloc] init];
        [_scrollView addSubview:_temperatureLabel8];
        
        _temperatureLabel16 = [[UILabel alloc] init];
        [_scrollView addSubview:_temperatureLabel8];
        
        _temperatureLabel17 = [[UILabel alloc] init];
        [_scrollView addSubview:_temperatureLabel8];
        
        _temperatureLabel18 = [[UILabel alloc] init];
        [_scrollView addSubview:_temperatureLabel8];
        
        _temperatureLabel19 = [[UILabel alloc] init];
        [_scrollView addSubview:_temperatureLabel8];
        
        _temperatureLabel20 = [[UILabel alloc] init];
        [_scrollView addSubview:_temperatureLabel8];
        
        _temperatureLabel21 = [[UILabel alloc] init];
        [_scrollView addSubview:_temperatureLabel8];
        
        _temperatureLabel22 = [[UILabel alloc] init];
        [_scrollView addSubview:_temperatureLabel8];
        
        _temperatureLabel23 = [[UILabel alloc] init];
        [_scrollView addSubview:_temperatureLabel8];
        
        _temperatureLabel24 = [[UILabel alloc] init];
        [_scrollView addSubview:_temperatureLabel8];
        
        _weatherImageView1 = [[UIImageView alloc] init];
        [_scrollView addSubview:_weatherImageView1];
        
        _weatherImageView2 = [[UIImageView alloc] init];
        [_scrollView addSubview:_weatherImageView2];
        
        _weatherImageView3 = [[UIImageView alloc] init];
        [_scrollView addSubview:_weatherImageView3];
        
        _weatherImageView4 = [[UIImageView alloc] init];
        [_scrollView addSubview:_weatherImageView4];
        
        _weatherImageView5 = [[UIImageView alloc] init];
        [_scrollView addSubview:_weatherImageView5];
        
        _weatherImageView6 = [[UIImageView alloc] init];
        [_scrollView addSubview:_weatherImageView6];
        
        _weatherImageView7 = [[UIImageView alloc] init];
        [_scrollView addSubview:_weatherImageView7];
        
        _weatherImageView8 = [[UIImageView alloc] init];
        [_scrollView addSubview:_weatherImageView8];
        
        _weatherImageView9 = [[UIImageView alloc] init];
        [_scrollView addSubview:_weatherImageView8];
        
        _weatherImageView10 = [[UIImageView alloc] init];
        [_scrollView addSubview:_weatherImageView8];
        
        _weatherImageView11 = [[UIImageView alloc] init];
        [_scrollView addSubview:_weatherImageView8];
        
        _weatherImageView12 = [[UIImageView alloc] init];
        [_scrollView addSubview:_weatherImageView8];
        
        _weatherImageView13 = [[UIImageView alloc] init];
        [_scrollView addSubview:_weatherImageView8];
        
        _weatherImageView14 = [[UIImageView alloc] init];
        [_scrollView addSubview:_weatherImageView8];
        
        _weatherImageView15 = [[UIImageView alloc] init];
        [_scrollView addSubview:_weatherImageView8];
        
        _weatherImageView16 = [[UIImageView alloc] init];
        [_scrollView addSubview:_weatherImageView8];
        
        _weatherImageView17 = [[UIImageView alloc] init];
        [_scrollView addSubview:_weatherImageView8];
        
        _weatherImageView18 = [[UIImageView alloc] init];
        [_scrollView addSubview:_weatherImageView8];
        
        _weatherImageView19 = [[UIImageView alloc] init];
        [_scrollView addSubview:_weatherImageView8];
        
        _weatherImageView20 = [[UIImageView alloc] init];
        [_scrollView addSubview:_weatherImageView8];
        
        _weatherImageView21 = [[UIImageView alloc] init];
        [_scrollView addSubview:_weatherImageView8];
        
        _weatherImageView22 = [[UIImageView alloc] init];
        [_scrollView addSubview:_weatherImageView8];
        
        _weatherImageView23 = [[UIImageView alloc] init];
        [_scrollView addSubview:_weatherImageView8];
        
        _weatherImageView24 = [[UIImageView alloc] init];
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
    _timeLabel9.frame = CGRectMake(805, 10, 80, 20);
    _timeLabel10.frame = CGRectMake(905, 10, 80, 20);
    _timeLabel11.frame = CGRectMake(1005, 10, 80, 20);
    _timeLabel12.frame = CGRectMake(1105, 10, 80, 20);
    _timeLabel13.frame = CGRectMake(1205, 10, 80, 20);
    _timeLabel14.frame = CGRectMake(1305, 10, 80, 20);
    _timeLabel15.frame = CGRectMake(1405, 10, 80, 20);
    _timeLabel16.frame = CGRectMake(1505, 10, 80, 20);
    _timeLabel17.frame = CGRectMake(1605, 10, 80, 20);
    _timeLabel18.frame = CGRectMake(1705, 10, 80, 20);
    _timeLabel19.frame = CGRectMake(1805, 10, 80, 20);
    _timeLabel20.frame = CGRectMake(1905, 10, 80, 20);
    _timeLabel21.frame = CGRectMake(2005, 10, 80, 20);
    _timeLabel22.frame = CGRectMake(2105, 10, 80, 20);
    _timeLabel23.frame = CGRectMake(2205, 10, 80, 20);
    _timeLabel24.frame = CGRectMake(2305, 10, 80, 20);
    
    _weatherImageView1.frame = CGRectMake(15, 40, 25, 25);
    _weatherImageView2.frame = CGRectMake(105, 40, 25, 25);
    _weatherImageView3.frame = CGRectMake(205, 40, 25, 25);
    _weatherImageView4.frame = CGRectMake(305, 40, 25, 25);
    _weatherImageView5.frame = CGRectMake(405, 40, 25, 25);
    _weatherImageView6.frame = CGRectMake(505, 40, 25, 25);
    _weatherImageView7.frame = CGRectMake(605, 40, 25, 25);
    _weatherImageView8.frame = CGRectMake(705, 40, 25, 25);
    _weatherImageView9.frame = CGRectMake(805, 40, 25, 25);
    _weatherImageView10.frame = CGRectMake(905, 40, 25, 25);
    _weatherImageView11.frame = CGRectMake(1005, 40, 25, 25);
    _weatherImageView12.frame = CGRectMake(1105, 40, 25, 25);
    _weatherImageView13.frame = CGRectMake(1205, 40, 25, 25);
    _weatherImageView14.frame = CGRectMake(1305, 40, 25, 25);
    _weatherImageView15.frame = CGRectMake(1405, 40, 25, 25);
    _weatherImageView16.frame = CGRectMake(1505, 40, 25, 25);
    _weatherImageView17.frame = CGRectMake(1605, 40, 25, 25);
    _weatherImageView18.frame = CGRectMake(1705, 40, 25, 25);
    _weatherImageView19.frame = CGRectMake(1805, 40, 25, 25);
    _weatherImageView20.frame = CGRectMake(1905, 40, 25, 25);
    _weatherImageView21.frame = CGRectMake(2005, 40, 25, 25);
    _weatherImageView22.frame = CGRectMake(2105, 40, 25, 25);
    _weatherImageView23.frame = CGRectMake(2205, 40, 25, 25);
    _weatherImageView24.frame = CGRectMake(2305, 40, 25, 25);
    
    _temperatureLabel1.frame = CGRectMake(15, 85, 80, 20);
    _temperatureLabel2.frame = CGRectMake(105, 85, 80, 20);
    _temperatureLabel3.frame = CGRectMake(205, 85, 80, 20);
    _temperatureLabel4.frame = CGRectMake(305, 85, 80, 20);
    _temperatureLabel5.frame = CGRectMake(405, 85, 80, 20);
    _temperatureLabel6.frame = CGRectMake(505, 85, 80, 20);
    _temperatureLabel7.frame = CGRectMake(605, 85, 80, 20);
    _temperatureLabel8.frame = CGRectMake(705, 85, 80, 20);
    _temperatureLabel9.frame = CGRectMake(805, 85, 80, 20);
    _temperatureLabel10.frame = CGRectMake(905, 85, 80, 20);
    _temperatureLabel11.frame = CGRectMake(1005, 85, 80, 20);
    _temperatureLabel12.frame = CGRectMake(1105, 85, 80, 20);
    _temperatureLabel13.frame = CGRectMake(1205, 85, 80, 20);
    _temperatureLabel14.frame = CGRectMake(1305, 85, 80, 20);
    _temperatureLabel15.frame = CGRectMake(1405, 85, 80, 20);
    _temperatureLabel16.frame = CGRectMake(1505, 85, 80, 20);
    _temperatureLabel17.frame = CGRectMake(1605, 85, 80, 20);
    _temperatureLabel18.frame = CGRectMake(1705, 85, 80, 20);
    _temperatureLabel19.frame = CGRectMake(1805, 85, 80, 20);
    _temperatureLabel20.frame = CGRectMake(1905, 85, 80, 20);
    _temperatureLabel21.frame = CGRectMake(2005, 85, 80, 20);
    _temperatureLabel22.frame = CGRectMake(2105, 85, 80, 20);
    _temperatureLabel23.frame = CGRectMake(2205, 85, 80, 20);
    _temperatureLabel24.frame = CGRectMake(2305, 85, 80, 20);
    
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
