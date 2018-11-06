//
//  CAReplicatorlayerViewController.m
//  CoreAnimationDemo
//
//  Created by Cary on 2018/10/8.
//  Copyright © 2018 Cary. All rights reserved.
//

#import "CAReplicatorlayerViewController.h"

@interface CAReplicatorlayerViewController ()

@property (nonatomic,strong)UIView *containerView;

@end

@implementation CAReplicatorlayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"CATransformLayer";
    self.view.backgroundColor = [UIColor whiteColor];
    //_containerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    _containerView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, self.view.frame.size.width-150, 200)];
    [self.view addSubview:_containerView];
    
    CAReplicatorLayer *replicator = [CAReplicatorLayer layer];
    replicator.frame = self.containerView.bounds;
    [self.containerView.layer addSublayer:replicator];
    
    replicator.instanceCount = 10;
    
    CATransform3D tranform = CATransform3DIdentity;
    tranform = CATransform3DTranslate(tranform, 0, 200, 0);
    tranform = CATransform3DRotate(tranform, M_PI/5.0, 0, 0, 1);
    tranform = CATransform3DTranslate(tranform, 0, -200, 0);
    replicator.instanceTransform = tranform;
    
    replicator.instanceBlueOffset = -0.1;
    replicator.instanceGreenOffset = -0.1;
    
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(100, 100, 100, 100);
    layer.backgroundColor = [UIColor whiteColor].CGColor;
    [replicator addSublayer:layer];
    
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
