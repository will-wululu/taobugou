//
//  SeperateTableViewCell.m
//  ONE_City
//
//  Created by 吴露露 on 2017/3/24.
//  Copyright © 2017年 Tom. All rights reserved.
//

#import "SeperateTableViewCell.h"

@interface SeperateTableViewCell ()

@end

@implementation SeperateTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
}

- (void)bindObject:(id)object indexPath:(NSIndexPath *)indexPath {
    NSString *title = (NSString *)object;
    self.titleLabel.text = title;
    
    self.backgroundColor = [UIColor colorWithHexString:@"f3ecec" alpha:1.0];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    if (selected) {
        self.titleLabel.textColor = [UIColor colorWithRed:248.f/255 green:84.f/255 blue:88.f/255 alpha:1];
    } else {
        self.titleLabel.textColor = [UIColor blackColor];
    }
    // Configure the view for the selected state
}

@end
