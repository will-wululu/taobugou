//
//  RightTableViewCell.h
//  ONE_City
//
//  Created by 吴露露 on 2017/3/25.
//  Copyright © 2017年 Tom. All rights reserved.
//

#import <UIKit/UIKit.h>

#define S_With [UIScreen mainScreen].bounds.size.width
#define S_hight [UIScreen mainScreen].bounds.size.height

typedef void(^PushNextBlock)(NSIndexPath *indexPath);

@interface RightTableViewCell : UITableViewCell<UICollectionViewDelegateFlowLayout,UICollectionViewDataSource,UICollectionViewDelegate>

@property (strong, nonatomic, readwrite) NSArray *listArray;

@property (strong, nonatomic, readwrite) UICollectionView *collectonView;

@property (nonatomic, copy) PushNextBlock pushNextBlock;

@end
