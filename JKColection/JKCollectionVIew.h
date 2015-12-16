//
//  JKCollectionVIew.h
//  JKColection
//
//  Created by Kzj_ZhongJunKang on 15/9/28.
//  Copyright © 2015年 Kzj_ZhongJunKang. All rights reserved.
//

#import <UIKit/UIKit.h>
static NSString *const collectionCell = @"Cell";

@interface JKCollectionVIew : UIView<UITableViewDataSource,UITableViewDelegate,UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic,strong)UIScrollView *mainScr;
@property(nonatomic,strong)UITableView *tableView;
@property (nonatomic , strong) UIButton *btn;
@property(nonatomic,strong)UICollectionView *collectionView;
@end
