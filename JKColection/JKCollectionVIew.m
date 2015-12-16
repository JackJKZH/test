//
//  JKCollectionVIew.m
//  JKColection
//
//  Created by Kzj_ZhongJunKang on 15/9/28.
//  Copyright © 2015年 Kzj_ZhongJunKang. All rights reserved.
//

#import "JKCollectionVIew.h"


@implementation JKCollectionVIew
-(instancetype)init
{
    if (self = [super init]) {
        
        [self addSubview:self.mainScr];
        [self.mainScr addSubview:self.btn];
        [self.mainScr addSubview:self.tableView];
        [self.mainScr addSubview:self.collectionView];
        [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:collectionCell];
    }
    return self;
}
-(UIButton *)btn{
    if (!_btn) {
        _btn = [UIButton new];
        _btn.frame = CGRectMake(30, 70, 60, 100);

        [_btn setTitle:@"点我啊" forState:UIControlStateNormal];
    }
    return _btn;
}
-(UIScrollView *)mainScr
{
    if (!_mainScr) {
        _mainScr = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
        [_mainScr setBackgroundColor:[UIColor greenColor]];
        _mainScr.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height*2);
    }
    return _mainScr;
}
-(UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 200, [UIScreen mainScreen].bounds.size.width, 200) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.backgroundColor = [UIColor grayColor];
    }
    return _tableView;
}
-(UICollectionView *)collectionView
{
    if (!_collectionView) {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.sectionInset = UIEdgeInsetsMake(10, 10, 10,10);
        layout.minimumInteritemSpacing = 10;
        layout.minimumLineSpacing = 10;
        layout.itemSize = CGSizeMake([UIScreen mainScreen].bounds.size.width, 40);
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0,400, [UIScreen mainScreen].bounds.size.width, 400) collectionViewLayout:layout];
        _collectionView.backgroundColor = [UIColor yellowColor];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
    }
    return _collectionView;
}

//代理方法
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *str = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:str];
    if (cell == nil ) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:str];
    }
    cell.textLabel.text = @"test";
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"点击了tableview的第%ld行",indexPath.row);
    
}

//collectionview代理方法
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 17;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:collectionCell forIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];
    return cell;
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"点击collectionview");
}


@end
