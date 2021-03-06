//
//  cityViewController.m
//  ios天气预报
//
//  Created by tuqiangyao on 2018/8/13.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "cityViewController.h"

@interface cityViewController ()

@end

@implementation cityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    
    _searchController = [[UISearchController alloc] initWithSearchResultsController:nil];
    _searchController.searchResultsUpdater = self;
    _searchController.delegate = self;
    _searchController.dimsBackgroundDuringPresentation = NO;
    _searchController.searchBar.frame = CGRectMake(self.searchController.searchBar.frame.origin.x, self.searchController.searchBar.frame.origin.y, self.searchController.searchBar.frame.size.width, 44.0);
    [_searchController.searchBar sizeToFit];
    _searchController.searchBar.backgroundColor = [UIColor orangeColor];
    self.tableView.tableHeaderView  = self.searchController.searchBar;
    
    [self.view addSubview:_tableView];
}

//- (void) citiesGet {
//    NSString *cityString = _searchController.searchBar.text;
//    NSString *urlString = [[NSString alloc] initWithFormat:@"https://search.heweather.com/find?location=%@&key=4598873b53f74eb6b02e51e44f7ea3e1&group=cn", cityString];
//    NSURL *url = [NSURL URLWithString:urlString];
//    NSURLRequest *requst = [NSURLRequest requestWithURL:url];
//    NSURLSession *session = [NSURLSession sharedSession];
//    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:requst completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//        dispatch_async(dispatch_get_main_queue(), ^{
//            NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
//
//            self->_citiesMutableArray = [[NSMutableArray alloc] init];
//            NSArray *basicArray = [dictionary[@"HeWeather6"][0] objectForKey:@"basic"];
//            for (int i = 0; i < basicArray.count ; i++) {
//                NSDictionary *cityDictionary = [basicArray objectAtIndex:i];
//                NSString *findCityString = [cityDictionary objectForKey:@"location"];
//                [self->_citiesMutableArray addObject:findCityString];
//            }
//
////            NSLog(@"%@", dictionary);
//            NSLog(@"%@",self->_citiesMutableArray);
//            [self->_tableView reloadData];
//        });
//
//    }];
//    [dataTask resume];
//}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (self.searchController.active) {
        return [self.searchList count];
    }else{
        return [self.citiesMutableArray count];
    }
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *dentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:dentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:dentifier];
    }
    if (self.searchController.active) {
        [cell.textLabel setText:self.searchList[indexPath.row]];
    } else {
        [cell.textLabel setText:self.citiesMutableArray[indexPath.row]];
    }
    return cell;
}

- (void) updateSearchResultsForSearchController:(UISearchController *)searchController
{
    NSString *searchString = [self.searchController.searchBar text];
    
    NSPredicate *preicate = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] %@", searchString];
    if (self.searchList != nil) {
        [self.searchList removeAllObjects];
    }
    
    NSString *urlString = [[NSString alloc] initWithFormat:@"https://search.heweather.com/find?location=%@&key=4598873b53f74eb6b02e51e44f7ea3e1&group=cn", searchString];
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *requst = [NSURLRequest requestWithURL:url];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:requst completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
            
            self->_citiesMutableArray = [[NSMutableArray alloc] init];
            NSArray *basicArray = [dictionary[@"HeWeather6"][0] objectForKey:@"basic"];
            for (int i = 0; i < basicArray.count ; i++) {
                NSDictionary *cityDictionary = [basicArray objectAtIndex:i];
                NSString *findCityString = [cityDictionary objectForKey:@"location"];
                [self->_citiesMutableArray addObject:findCityString];
            }
            
            //            NSLog(@"%@", dictionary);
            NSLog(@"%@",self->_citiesMutableArray);
            [self->_tableView reloadData];
        });
    }];
    [dataTask resume];
    
    self.searchList = [NSMutableArray arrayWithArray:[_citiesMutableArray filteredArrayUsingPredicate:preicate]];
    [_tableView reloadData];
    
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
