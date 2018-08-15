//
//  ViewController.h
//  ios天气预报
//
//  Created by tuqiangyao on 2018/8/13.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "homePageView.h"


@interface ViewController : UIViewController <homePageViewController, UIScrollViewDelegate>
@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, retain) UIPageControl *pageControl;
@property (nonatomic, strong) NSString *findCityString;
@property (nonatomic, strong) NSMutableArray *allCitiesMutableArray;

@end

