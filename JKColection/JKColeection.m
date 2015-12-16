//
//  JKColeection.m
//  JKColection
//
//  Created by Kzj_ZhongJunKang on 15/9/26.
//  Copyright © 2015年 Kzj_ZhongJunKang. All rights reserved.
//

#import "JKColeection.h"
#import "JKCollectionVIew.h"
#import "WebViewController.h"

@interface JKColeection ()

@property(nonatomic,strong)JKCollectionVIew *collec;
@end

@implementation JKColeection

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor] ;
    self.navigationItem.title = @"test";
    [self.view addSubview:self.collec];
    [self.collec.btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
//    self.view = self.collec;
    // Do any additional setup after loading the view.
}
-(JKCollectionVIew *)collec
{
    if (!_collec) {
        _collec = [[JKCollectionVIew alloc] init];
        _collec.frame = self.view.bounds;
        
    }
    return _collec;
}
-(void)click{
    WebViewController *web = [[WebViewController alloc] init];
    [self.navigationController pushViewController:web animated:YES];
        NSLog(@"........");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



@end
