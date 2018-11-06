//
//  CAScrollLayerViewController.m
//  CoreAnimationDemo
//
//  Created by Cary on 2018/11/6.
//  Copyright © 2018 Cary. All rights reserved.
//

#import "CAScrollLayerViewController.h"
#import "ScrollLayer.h"

#define xScreenWidth        ([UIScreen mainScreen].bounds.size.width)
#define xScreenHeight       ([UIScreen mainScreen].bounds.size.height)

@interface CAScrollLayerViewController ()

@end

@implementation CAScrollLayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"CAScrollLayer";
    //创建一个layer展示内容层，也就是scrollLayer的子视图
    CALayer *layer = [CALayer layer];
    layer.bounds = CGRectMake(0, 0, 300, 300);
    layer.position = CGPointMake(150, 100);
    layer.contents = (__bridge id)[UIImage imageNamed:@"Image"].CGImage;
    
    //创建自定义的scrollLayer的view
    ScrollLayer *scrollLayer = [[ScrollLayer alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
    scrollLayer.layer.borderColor = [UIColor grayColor].CGColor;
    scrollLayer.layer.borderWidth = 1;
    scrollLayer.center = CGPointMake(xScreenWidth/2, xScreenHeight/2);
    [scrollLayer.layer addSublayer:layer];
    [self.view addSubview:scrollLayer];
    
    //这里要注意的两点：
    
    //1、就是CAScrollLayer不处理用户的输入，不负责将触摸事件转换为滑动事件，也不实现ios指定的行为；例如滑动反弹
   //2、要注意bounds和frame的区别；frame是相对于父视图而言，在父视图的位置；bounds是针对自己而言，bounds的原点一般都为(0,0)，设置bounds的原点，就相当于子视图的位置改变。
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
