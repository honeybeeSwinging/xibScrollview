//
//  RootViewController.m
//  xibForScrollView
//
//  Created by Radish on 2017/4/20.
//  Copyright © 2017年 Seller. All rights reserved.
//

#import "RootViewController.h"
#import "EqualViewController.h"
#import "ScrollViewViewController.h"
#import "XibCellViewController.h"

@interface RootViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _dataSource = @[@"滚动视图", @"平分view", @"cell"];
    _tableView.tableFooterView = [UIView new];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataSource.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([UITableViewCell class])];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass([UITableViewCell class])];
    }
    cell.textLabel.text = _dataSource[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        ScrollViewViewController *scrollView = [[ScrollViewViewController alloc] init];
        [self.navigationController pushViewController:scrollView animated:YES];
    }
    else if (indexPath.row == 1){
        EqualViewController *scrollView = [[EqualViewController alloc] init];
        [self.navigationController pushViewController:scrollView animated:YES];
    }
    else if (indexPath.row == 2){
        XibCellViewController *scrollView = [[XibCellViewController alloc] init];
        [self.navigationController pushViewController:scrollView animated:YES];
    }
}

@end
