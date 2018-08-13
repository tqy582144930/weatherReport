//
//  firstStyleTableViewCell.h
//  ios天气预报
//
//  Created by tuqiangyao on 2018/8/13.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface firstStyleTableViewCell : UITableViewCell
@property (nonatomic, strong) UILabel *locationLabel;
@property (nonatomic, strong) UILabel *weatherLabel;
@property (nonatomic, strong) UILabel *nowTemperatureLabel;
@property (nonatomic, strong) UILabel *whatDayLabel;
@property (nonatomic, strong) UILabel *dayLabel;
@property (nonatomic, strong) UILabel *maxTemperatureLable;
@property (nonatomic, strong) UILabel *minTemperatureLable;

@end
