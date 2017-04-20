//
//  XibCell.m
//  xibForScrollView
//
//  Created by Radish on 2017/4/20.
//  Copyright © 2017年 Seller. All rights reserved.
//

#import "XibCell.h"

@interface XibCell ()

@property (weak, nonatomic) IBOutlet UILabel *contentLabel;


@end

@implementation XibCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setContentText:(NSString *)contentText{
    _contentText = contentText;
    _contentLabel.text = contentText;
}

@end
