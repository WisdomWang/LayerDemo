//
//  ViewController.m
//  CoreAnimationDemo
//
//  Created by Cary on 2018/9/28.
//  Copyright © 2018年 Cary. All rights reserved.
//

#import "ViewController.h"
#import "CAShapeLayerViewController.h"
#import "CAtextLayerViewController.h"
#import "CATransformLayerViewController.h"
#import "CAGradientLayerViewController.h"
#import "CAReplicatorlayerViewController.h"
#import "CAScrollLayerViewController.h"
#import "CAEmitterLayerViewController.h"
#import "CATiledLayerViewController.h"

#define xScreenWidth        ([UIScreen mainScreen].bounds.size.width)
#define xScreenHeight       ([UIScreen mainScreen].bounds.size.height)


static NSString* const xMainCell = @"mainCell";

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource> {
    
    NSArray *arr;
}

@property (nonatomic,strong)UITableView *mainTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title = @"CoreAnimation";
    CGRect tableViewFrame = CGRectMake(0, 0, xScreenWidth, xScreenHeight);
    _mainTableView = [[UITableView alloc] initWithFrame:tableViewFrame style:UITableViewStylePlain];
    _mainTableView.delegate = self;
    _mainTableView.dataSource = self;
    _mainTableView.showsVerticalScrollIndicator = NO;
    _mainTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    [self.view addSubview:_mainTableView];
    [_mainTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:xMainCell];
    arr = @[@"CAShapeLayer",@"CATextLayer",@"CATransformLayer",@"CAGradientLayer",@"CAReplicatorlayer",@"CAScrollLayer",@"CAEmitterLayer",@"CATiledLayer"];
    
    NSLog(@"版本号为%ld.%ld.%ld",(long)[[NSProcessInfo processInfo] operatingSystemVersion].majorVersion, (long)[[NSProcessInfo processInfo] operatingSystemVersion].minorVersion,(long)[[NSProcessInfo processInfo] operatingSystemVersion].patchVersion);
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:xMainCell];
    cell.textLabel.text = arr[indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        
        CAShapeLayerViewController *vc = [[CAShapeLayerViewController alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
        
    }
    if (indexPath.row == 1) {
        
        CAtextLayerViewController *vc = [[CAtextLayerViewController alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
        
    }
    if (indexPath.row == 2) {
        
        CATransformLayerViewController *vc = [[CATransformLayerViewController alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
        
    }
    if (indexPath.row == 3) {
        
        CAGradientLayerViewController *vc = [[CAGradientLayerViewController alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
        
    }
    if (indexPath.row == 4) {
        
        CAReplicatorlayerViewController *vc = [[CAReplicatorlayerViewController alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
        
    }
    if (indexPath.row == 5) {
        
        CAScrollLayerViewController *vc = [[CAScrollLayerViewController alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
        
    }
    if (indexPath.row == 6) {
        
        CAEmitterLayerViewController *vc = [[CAEmitterLayerViewController alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
        
    }
    if (indexPath.row == 7) {
        
        CATiledLayerViewController *vc = [[CATiledLayerViewController alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
