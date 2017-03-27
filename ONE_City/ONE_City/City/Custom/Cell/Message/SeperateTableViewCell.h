//
//  SeperateTableViewCell.h
//  ONE_City
//
//  Created by 吴露露 on 2017/3/24.
//  Copyright © 2017年 Tom. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColor+RCColor.h"


@interface SeperateTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

- (void)bindObject:(id)object indexPath:(NSIndexPath *)indexPath;

@end
