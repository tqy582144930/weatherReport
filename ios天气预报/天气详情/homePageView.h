//
//  homePageView.h
//  ios天气预报
//
//  Created by tuqiangyao on 2018/8/15.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstModel.h"
#import "FifthModel.h"
#import "cityViewController.h"

@interface homePageView : UIView
<UITableViewDataSource,
UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, retain) FirstModel *firstData;
@property (nonatomic, retain) FifthModel *fifthData;
@property (nonatomic, strong) NSArray *maxTempArray;
@property (nonatomic, strong) NSArray *minTempArray;
@property (nonatomic, strong) NSMutableArray *dayMutableArray;
@property (nonatomic, strong) NSMutableArray *maxtempretatureMutableArray;
@property (nonatomic, strong) NSMutableArray *mintempretatureMutableArray;
@property (nonatomic, strong) NSMutableArray *weatherImageMutableArray;
@property (nonatomic, strong) NSArray *weatherPictureArray;
@property (nonatomic, strong) NSString *remindString;
@property (nonatomic, strong) NSString *searchCityString;
@property (nonatomic, strong) NSString *otherSearchCityString;
@property (nonatomic, strong) NSString *whatDayString;
@property (nonatomic, strong) NSMutableArray *timeMutableArray;
@property (nonatomic, strong) NSMutableArray *temperatureMutableArray;
@property (nonatomic, strong) NSMutableArray *imageMutableArray;
- (instancetype) initWithFrame:(CGRect)frame andCityName:(NSString *) cityNameString;
@end
