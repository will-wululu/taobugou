//
//  RightTableViewCell.m
//  ONE_City
//
//  Created by 吴露露 on 2017/3/25.
//  Copyright © 2017年 Tom. All rights reserved.
//

#import "RightTableViewCell.h"
#import "UIColor+RCColor.h"
#import "ProcuctListItem.h"
#import <Masonry/Masonry.h>

@implementation RightTableViewCell

@synthesize listArray,collectonView;

- (void)awakeFromNib {
    [super awakeFromNib];
    
    UICollectionViewFlowLayout *flowLayout=[[UICollectionViewFlowLayout alloc] init];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    flowLayout.minimumLineSpacing = 25.f;
    flowLayout.minimumInteritemSpacing = 12.f;
//    flowLayout.minimumInteritemSpacing = 1 /[UIScreen mainScreen].scale;
//    flowLayout.minimumLineSpacing = 1.5 /[UIScreen mainScreen].scale;
//    if (S_With == 375.f) {
//        flowLayout.minimumLineSpacing = 1.3;
//    } else if (S_With == 414.f) {
//        flowLayout.minimumLineSpacing = 1;
//    }
    self.collectonView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:flowLayout];
    collectonView.delegate = self;
    collectonView.dataSource = self;
//    collectonView.backgroundColor = [UIColor colorWithHexString:@"dfdfdf" alpha:1];
    collectonView.backgroundColor = [UIColor whiteColor];
    [collectonView registerClass:[ProcuctListItem class] forCellWithReuseIdentifier:@"ProcuctListItem"];
    collectonView.showsHorizontalScrollIndicator = NO;
    collectonView.showsVerticalScrollIndicator = NO;
    collectonView.scrollEnabled = NO;
    collectonView.bounces = NO;
    [self.contentView addSubview:collectonView];
    
    [self setupFrame];

}

- (void)setupFrame {
    
    __weak typeof (self) weakSelf = self;
    
    [collectonView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(weakSelf.contentView);
        make.top.mas_equalTo(weakSelf.contentView.mas_top).with.offset(0);
        make.size.mas_equalTo(weakSelf.contentView);
    }];
    
}

#pragma mark -- UICollectionViewDataSource

//定义展示的UICollectionViewCell的个数
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.listArray.count;
    
}

//定义展示的Section的个数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

//每个UICollectionView展示的内容
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * CellIdentifier = @"ProcuctListItem";
    ProcuctListItem * cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
    [cell bindeWithObject:listArray[indexPath.row]];
    return cell;
}

#pragma mark --UICollectionViewDelegateFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
    if (S_With == 375.0f) {
//        return CGSizeMake((S_With - 2.3) / 3, 88);
        return CGSizeMake(54, 88);
    } else if (S_With == 320.0f) {
//        return CGSizeMake((S_With - 1.3) / 3, 88);
        return CGSizeMake(54, 88);
    }
//    return CGSizeMake((S_With - 2.3) / 3, 88);
    return CGSizeMake(54, 88);
}
////定义每个UICollectionView 的 margin
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(15, 12, 15,12);
}
#pragma mark --UICollectionViewDelegate
//UICollectionView被选中时调用的方法
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    //    NewMyListItem * cell = (NewMyListItem *)[collectionView cellForItemAtIndexPath:indexPath];
    
    if (self.pushNextBlock) {
        self.pushNextBlock(indexPath);
        
    };
    
}

//返回这个UICollectionView是否可以被选择
-(BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
