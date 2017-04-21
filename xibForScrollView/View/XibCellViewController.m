//
//  XibCellViewController.m
//  xibForScrollView
//
//  Created by Radish on 2017/4/20.
//  Copyright © 2017年 Seller. All rights reserved.
//

#import "XibCellViewController.h"
#import "XibCell.h"

@interface XibCellViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation XibCellViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_tableView registerNib:[UINib nibWithNibName:NSStringFromClass([XibCell class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([XibCell class])];
    _tableView.estimatedRowHeight = 44.0f;
    _tableView.rowHeight = UITableViewAutomaticDimension;
    
    _dataSource = @[
                    @"哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加",
                    @"哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加",
                    @"哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加",
                    @"哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加",
                    @"哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加",
                    @"哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加",
                    @"哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加哈哈哈哈哈哈哈三打哈基督教卡卡就大时间好快加"
                    ];
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    XibCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([XibCell class])];
    cell.contentText = _dataSource[indexPath.row];
    return cell;
}

@end
