//
//  ProcuctListItem.h
//  ONE_City
//
//  Created by 吴露露 on 2017/3/26.
//  Copyright © 2017年 Tom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProcuctListItem : UICollectionViewCell

@property (nonatomic, strong) NSArray *dataArray;

- (void)bindeWithObject:(id)data;

@end
