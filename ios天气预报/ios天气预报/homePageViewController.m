//
//  homePageViewController.m
//  ios天气预报
//
//  Created by tuqiangyao on 2018/8/13.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "homePageViewController.h"
#import "firstStyleTableViewCell.h"
#import "secondStyleTableViewCell.h"
#import "thridStyleTableViewCell.h"
#import "fourthStyleTableViewCell.h"
#import "fifthTableViewCell.h"
#import "cityViewController.h"

@interface homePageViewController ()

@end

@implementation homePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *backImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"天气预报背景图"]];
    backImageView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    [self.view addSubview:backImageView];
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 49) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.separatorColor = [UIColor blackColor];
    _tableView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:_tableView];
    [_tableView registerClass:[firstStyleTableViewCell class] forCellReuseIdentifier:@"labelCell1"];
    [_tableView registerClass:[secondStyleTableViewCell class] forCellReuseIdentifier:@"labelCell2"];
    [_tableView registerClass:[thridStyleTableViewCell class] forCellReuseIdentifier:@"labelCell3"];
    [_tableView registerClass:[fourthStyleTableViewCell class] forCellReuseIdentifier:@"labelCell4"];
    [_tableView registerClass:[fifthTableViewCell class] forCellReuseIdentifier:@"labelCell5"];
    
    UIButton *citiesButton = [UIButton buttonWithType:UIButtonTypeCustom];
    citiesButton.frame = CGRectMake(15, 700, 50, 30);
    [citiesButton setTitle:@"城市" forState:UIControlStateNormal];
    [citiesButton addTarget:self action:@selector(clickButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:citiesButton];
}

- (void) clickButton {
    cityViewController *nextViewController = [[cityViewController alloc] init];
    [self presentViewController:nextViewController animated:YES completion:nil];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *array = [NSArray arrayWithObjects:@"1",@"1",@"3",@"1",@"5", nil];
    return [[array objectAtIndex:section] integerValue];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    firstStyleTableViewCell *cell1 = nil;
    secondStyleTableViewCell *cell2 = nil;
    thridStyleTableViewCell *cell3 = nil;
    fourthStyleTableViewCell *cell4 = nil;
    fifthTableViewCell *cell5 = nil;
    if (indexPath.section == 0) {
        if (cell1 == nil) {
            cell1 = [tableView dequeueReusableCellWithIdentifier:@"labelCell1" forIndexPath:indexPath];
        }
        cell1.selectionStyle = UITableViewCellSelectionStyleNone;
        cell1.backgroundColor = [UIColor clearColor];
        return cell1;
    }
    else if (indexPath.section == 1) {
        if (cell2 == nil) {
            cell2 = [tableView dequeueReusableCellWithIdentifier:@"labelCell2" forIndexPath:indexPath];
        }
        cell2.selectionStyle = UITableViewCellSelectionStyleNone;
        cell2.backgroundColor = [UIColor clearColor];
        return cell2;
    }
    else if (indexPath.section == 2) {
        if (cell3 == nil) {
            cell3 = [tableView dequeueReusableCellWithIdentifier:@"labelCell3" forIndexPath:indexPath];
        }
        cell3.selectionStyle = UITableViewCellSelectionStyleNone;
        cell3.backgroundColor = [UIColor clearColor];
        return cell3;
    }
    else if (indexPath.section == 3) {
        if (cell4 == nil) {
            cell4 = [tableView dequeueReusableCellWithIdentifier:@"labelCell4" forIndexPath:indexPath];
        }
        cell4.selectionStyle = UITableViewCellSelectionStyleNone;
        cell4.backgroundColor = [UIColor clearColor];
        return cell4;
    }
    else {
        if (cell5 == nil) {
            cell5 = [tableView dequeueReusableCellWithIdentifier:@"labelCell5" forIndexPath:indexPath];
         }
        NSArray *firstArray = [NSArray arrayWithObjects:@"日出",@"降雨概率",@"风速",@"降水量",@"能见度", nil];
        NSArray *secondArray = [NSArray arrayWithObjects:@"日落",@"湿度",@"体感温度",@"气压",@"紫外线指数", nil];
        cell5.selectionStyle = UITableViewCellSelectionStyleNone;
        cell5.firstLabel.text = [firstArray objectAtIndex:indexPath.row];
        cell5.secondLabel.text = [secondArray objectAtIndex:indexPath.row];
        cell5.backgroundColor = [UIColor clearColor];
        return cell5;
    }
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return 300;
    }
    else if (indexPath.section == 1) {
        return 120;
    }
    else if (indexPath.section == 2) {
        return 50;
    }
    else if (indexPath.section == 3) {
        return 50;
    }
    else  {
        return 70;
    }
}

- (CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0;
}
//获取尾部高度
- (CGFloat) tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0;
}

- (UIView*) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return nil;
}
- (UIView*) tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
