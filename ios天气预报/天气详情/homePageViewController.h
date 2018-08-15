//
//  homePageViewController.h
//  ios天气预报
//
//  Created by tuqiangyao on 2018/8/15.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstModel.h"
#import "FifthModel.h"

@interface homePageViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, retain) FirstModel *firstData;
@property (nonatomic, retain) FifthModel *fifthData;
@property (nonatomic, strong) NSArray *maxTempArray;
@property (nonatomic, strong) NSArray *minTempArray;
@property (nonatomic, strong) NSArray *dayArray;
@property (nonatomic, strong) NSString *remindString;
@property (nonatomic, strong) NSString *searchCityString;

@end
