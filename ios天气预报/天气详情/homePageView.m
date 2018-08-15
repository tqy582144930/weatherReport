//
//  homePageView.m
//  ios天气预报
//
//  Created by tuqiangyao on 2018/8/15.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "homePageView.h"
#import "firstStyleTableViewCell.h"
#import "secondStyleTableViewCell.h"
#import "thridStyleTableViewCell.h"
#import "fourthStyleTableViewCell.h"
#import "fifthTableViewCell.h"
#import "cityViewController.h"
#import "FirstModel.h"
#import "FifthModel.h"

@implementation homePageView

- (instancetype) initWithFrame:(CGRect)frame andCityName:(NSString *) cityNameString{
    self = [super initWithFrame:frame];
    if (self) {
        _searchCityString = cityNameString;
        NSLog(@"5645%@",_searchCityString);
        _tableView = [[UITableView alloc] init];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorColor = [UIColor blackColor];
        _tableView.backgroundColor = [UIColor clearColor];
        [self addSubview:_tableView];
        [_tableView registerClass:[firstStyleTableViewCell class] forCellReuseIdentifier:@"labelCell1"];
        [_tableView registerClass:[secondStyleTableViewCell class] forCellReuseIdentifier:@"labelCell2"];
        [_tableView registerClass:[thridStyleTableViewCell class] forCellReuseIdentifier:@"labelCell3"];
        [_tableView registerClass:[fourthStyleTableViewCell class] forCellReuseIdentifier:@"labelCell4"];
        [_tableView registerClass:[fifthTableViewCell class] forCellReuseIdentifier:@"labelCell5"];
        
        _firstData = [[FirstModel alloc] init];
        _fifthData = [[FifthModel alloc] init];
        [self Get];
    }
    return self;
}

- (void) layoutSubviews {
    [super layoutSubviews];
    _tableView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 49);
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *array = [NSArray arrayWithObjects:@"1",@"1",@"2",@"1",@"5", nil];
    return [[array objectAtIndex:section] integerValue];
}

- (void) Get {
    _searchCityString = [_searchCityString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet characterSetWithCharactersInString:@"#%^{}\"[]|\\<> "].invertedSet];
    NSString *urlString = [[NSString alloc] initWithFormat:@"https://free-api.heweather.com/s6/weather?location=%@&key=4598873b53f74eb6b02e51e44f7ea3e1&group=cn", _searchCityString];
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *requst = [NSURLRequest requestWithURL:url];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:requst completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {

        dispatch_async(dispatch_get_main_queue(), ^{
            NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];

            NSString *locationString = [[dictionary[@"HeWeather6"][0] objectForKey:@"basic"] objectForKey:@"location"];
            NSString *maxTemperatureString = [[dictionary[@"HeWeather6"][0] objectForKey:@"daily_forecast"][0] objectForKey:@"tmp_max"];
            NSString *minTemperatureString = [[dictionary[@"HeWeather6"][0] objectForKey:@"daily_forecast"][0] objectForKey:@"tmp_min"];
            NSString *weatherString = [[dictionary[@"HeWeather6"][0] objectForKey:@"daily_forecast"][0] objectForKey:@"cond_txt_d"];
            NSString *whatDayString = [[dictionary[@"HeWeather6"][0] objectForKey:@"daily_forecast"][0] objectForKey:@"date"];
            NSString *nowTemperatureString = [[dictionary[@"HeWeather6"][0] objectForKey:@"now"] objectForKey:@"tmp"];
            self->_firstData.nowTemperatureString = nowTemperatureString;
            self->_firstData.locationString = locationString;
            self->_firstData.minTemperatureString = minTemperatureString;
            self->_firstData.maxTemperatureString = maxTemperatureString;
            self->_firstData.weatherString = weatherString;
            self->_firstData.whatDayString = whatDayString;

            NSString *tomorrowMaxTempString = [[dictionary[@"HeWeather6"][0] objectForKey:@"daily_forecast"][1] objectForKey:@"tmp_max"];
            NSString *dayAfterTomrrowMaxTempString = [[dictionary[@"HeWeather6"][0] objectForKey:@"daily_forecast"][2] objectForKey:@"tmp_max"];
            self->_maxTempArray = [NSArray arrayWithObjects:tomorrowMaxTempString, dayAfterTomrrowMaxTempString,nil];

            NSString *tomorrowMinTempString = [[dictionary[@"HeWeather6"][0] objectForKey:@"daily_forecast"][1] objectForKey:@"tmp_min"];
            NSString *dayAfterTomrrowMinTempString = [[dictionary[@"HeWeather6"][0] objectForKey:@"daily_forecast"][2] objectForKey:@"tmp_min"];
            self->_minTempArray = [NSArray arrayWithObjects:tomorrowMinTempString,dayAfterTomrrowMinTempString, nil];

            NSString *tomorrowDayString = [[dictionary[@"HeWeather6"][0] objectForKey:@"daily_forecast"][1] objectForKey:@"date"];
            NSString *dayAfterTomorrowDayString = [[dictionary[@"HeWeather6"][0] objectForKey:@"daily_forecast"][2] objectForKey:@"date"];
            self->_dayArray = [NSArray arrayWithObjects:tomorrowDayString, dayAfterTomorrowDayString,nil];

            NSString *sunriseString = [[dictionary[@"HeWeather6"][0] objectForKey:@"daily_forecast"][0] objectForKey:@"sr"];
            NSString *rainfallProbabilityString = [[dictionary[@"HeWeather6"][0] objectForKey:@"daily_forecast"][0] objectForKey:@"pop"];
            NSString *windSpeedString = [[dictionary[@"HeWeather6"][0] objectForKey:@"daily_forecast"][0] objectForKey:@"wind_spd"];
            NSString *precipitationString = [[dictionary[@"HeWeather6"][0] objectForKey:@"daily_forecast"][0] objectForKey:@"pcpn"];
            NSString *seeingString = [[dictionary[@"HeWeather6"][0] objectForKey:@"daily_forecast"][0] objectForKey:@"vis"];
            self->_fifthData.firstMutableArray = [NSMutableArray arrayWithObjects:sunriseString,rainfallProbabilityString,windSpeedString,precipitationString,seeingString, nil];

            NSString *sunsetString = [[dictionary[@"HeWeather6"][0] objectForKey:@"daily_forecast"][0] objectForKey:@"ss"];
            sunsetString = [NSString stringWithFormat:@"下午%@",sunsetString];
            NSString *humidityString = [[dictionary[@"HeWeather6"][0] objectForKey:@"daily_forecast"][0] objectForKey:@"hum"];
            NSString *airPressString = [[dictionary[@"HeWeather6"][0] objectForKey:@"daily_forecast"][0] objectForKey:@"pres"];
            NSString *ultravioletRayString = [[dictionary[@"HeWeather6"][0] objectForKey:@"daily_forecast"][0] objectForKey:@"uv_index"];
            NSString *sendibleTemperatureString = [[dictionary[@"HeWeather6"][0] objectForKey:@"now"] objectForKey:@"fl"];
            self->_fifthData.secondMutableArray = [NSMutableArray arrayWithObjects:sunsetString,humidityString,sendibleTemperatureString,airPressString,ultravioletRayString, nil];

            NSString *remindString = [[dictionary[@"HeWeather6"][0] objectForKey:@"lifestyle"][0] objectForKey:@"txt"];
            self->_remindString = remindString;

            [self->_tableView reloadData];
//            NSLog(@"%@", dictionary);
        });

    }];
    [dataTask resume];
}


- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    firstStyleTableViewCell *cell1;
    secondStyleTableViewCell *cell2;
    thridStyleTableViewCell *cell3;
    fourthStyleTableViewCell *cell4;
    fifthTableViewCell *cell5;
    if (indexPath.section == 0) {
        if (cell1 == nil) {
            cell1 = [tableView dequeueReusableCellWithIdentifier:@"labelCell1" forIndexPath:indexPath];
        }
        cell1.selectionStyle = UITableViewCellSelectionStyleNone;
        cell1.backgroundColor = [UIColor clearColor];
        cell1.locationLabel.text = _firstData.locationString;
        cell1.minTemperatureLable.text = _firstData.minTemperatureString;
        cell1.maxTemperatureLable.text = _firstData.maxTemperatureString;
        cell1.weatherLabel.text = _firstData.weatherString;
        cell1.whatDayLabel.text = _firstData.whatDayString;
        cell1.nowTemperatureLabel.text = _firstData.nowTemperatureString;
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
        cell3.dayLabel.text = [_dayArray objectAtIndex:indexPath.row];
        cell3.maxTemperatureLabel.text = [_maxTempArray objectAtIndex:indexPath.row];
        cell3.minTemperatureLabel.text = [_minTempArray objectAtIndex:indexPath.row];
        return cell3;
    }
    else if (indexPath.section == 3) {
        if (cell4 == nil) {
            cell4 = [tableView dequeueReusableCellWithIdentifier:@"labelCell4" forIndexPath:indexPath];
        }
        cell4.selectionStyle = UITableViewCellSelectionStyleNone;
        cell4.backgroundColor = [UIColor clearColor];
        cell4.nameLabel.text = _remindString;
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
        cell5.thridLabel.text = [_fifthData.firstMutableArray objectAtIndex:indexPath.row];
        cell5.fourthLabel.text = [_fifthData.secondMutableArray objectAtIndex:indexPath.row];
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
        return 60;
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

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
