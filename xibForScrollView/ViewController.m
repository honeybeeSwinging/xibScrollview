//
//  ViewController.m
//  xibForScrollView
//
//  Created by Radish on 2017/4/7.
//  Copyright © 2017年 Seller. All rights reserved.
//

#import "ViewController.h"
#import <UIView+SDAutoLayout.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollview;

@property (weak, nonatomic) IBOutlet UIView *buttomView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [_scrollview setupAutoContentSizeWithBottomView:_buttomView bottomMargin:0];
}



@end
