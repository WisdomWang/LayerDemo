//
//  CATiledLayerViewController.m
//  CoreAnimationDemo
//
//  Created by Cary on 2018/11/6.
//  Copyright © 2018 Cary. All rights reserved.
//

#import "CATiledLayerViewController.h"
#import "TiledView.h"

#define xScreenWidth        ([UIScreen mainScreen].bounds.size.width)
#define xScreenHeight       ([UIScreen mainScreen].bounds.size.height)

@interface CATiledLayerViewController ()

@end

@implementation CATiledLayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"CATiledLayer";
    
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, xScreenWidth, xScreenHeight)];
    [self.view addSubview:scrollView];
    
    TiledView *tiledView = [[TiledView alloc]initWithFrame:CGRectMake(0, 0, xScreenWidth, 4000)];
    [scrollView addSubview:tiledView];
    scrollView.contentSize = CGSizeMake(xScreenWidth, 4000);
    
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
