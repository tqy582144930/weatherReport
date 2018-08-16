//
//  ViewController.m
//  ios天气预报
//
//  Created by tuqiangyao on 2018/8/13.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "ViewController.h"
#import "homePageView.h"
#import "firstStyleTableViewCell.h"
#import "secondStyleTableViewCell.h"
#import "thridStyleTableViewCell.h"
#import "fourthStyleTableViewCell.h"
#import "fifthTableViewCell.h"
#import "cityViewController.h"
#import "FirstModel.h"
#import "FifthModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) sendFindString:(NSString *)findCityString {
    [_allCitiesMutableArray addObject:findCityString];
    
    homePageView *newView = [[homePageView alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width*(_allCitiesMutableArray.count), 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-49) andCityName:findCityString];
    _scrollView.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width*(_allCitiesMutableArray.count+1),[UIScreen mainScreen].bounds.size.height - 49);
    _pageControl.numberOfPages = _allCitiesMutableArray.count+1;
    _pageControl.currentPage = _allCitiesMutableArray.count+1;
    [self.scrollView setContentOffset:CGPointMake(self.scrollView.frame.size.width*(_allCitiesMutableArray.count), 0) animated:NO];
    [_scrollView addSubview:newView];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView *backImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"天气预报背景图3"]];
    backImageView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    [self.view addSubview:backImageView];
    _allCitiesMutableArray = [[NSMutableArray alloc] init];
    _findCityString = [[NSString alloc] init];
    
    UIButton *citiesButton = [UIButton buttonWithType:UIButtonTypeCustom];
    citiesButton.frame = CGRectMake(365, 700, 40, 35);
    [citiesButton setImage:[UIImage imageNamed:@"按钮"] forState:UIControlStateNormal];
    [citiesButton addTarget:self action:@selector(clickButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:citiesButton];
    
    _scrollView = [[UIScrollView alloc] init];
    _scrollView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 49);
    _scrollView.pagingEnabled = YES;
    _scrollView.alwaysBounceHorizontal = YES;
    _scrollView.alwaysBounceVertical = NO;
    _scrollView.showsHorizontalScrollIndicator = NO;
    _scrollView.delegate = self;
    _scrollView.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width*(_allCitiesMutableArray.count+1),[UIScreen mainScreen].bounds.size.height - 49);
    [self.view addSubview:_scrollView];
    
    
    homePageView *nextViewController = [[homePageView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-49) andCityName:@"西安市"];
    [_scrollView addSubview:nextViewController];
    
    _pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(100, 700, 200, 30)];
    _pageControl.numberOfPages = _allCitiesMutableArray.count+1;
    _pageControl.hidesForSinglePage = YES;
    [self.view addSubview:_pageControl];
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    int page = (scrollView.contentOffset.x + scrollView.frame.size.width / 2)/ scrollView.frame.size.width;
    self.pageControl.currentPage = page;
}

- (void) clickButton {
    cityViewController *nextViewController1 = [[cityViewController alloc] init];
    nextViewController1.delegate = self;
    [self presentViewController:nextViewController1 animated:YES completion:nil];
}


@end
