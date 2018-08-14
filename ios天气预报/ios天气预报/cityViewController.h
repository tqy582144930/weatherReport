//
//  cityViewController.h
//  ios天气预报
//
//  Created by tuqiangyao on 2018/8/13.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface cityViewController : UIViewController
<UITableViewDelegate,
UITableViewDataSource,
UISearchResultsUpdating,
UISearchControllerDelegate>
@property (nonatomic, strong) NSMutableArray *citiesMutableArray;
@property (nonatomic, strong) UISearchController *searchController;
@property (nonatomic, strong) NSMutableArray *searchList;
@property (nonatomic, strong) UITableView *tableView;

@end
