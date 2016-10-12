//
//  UIViewController+NavBar.m
//  Farming
//
//  Created by mac on 2016/10/8.
//  Copyright © 2016年 CES. All rights reserved.
//

#import "UIViewController+NavBar.h"
#import "ConfigurationHeader.h"
@implementation UIViewController (NavBar)
- (void)navgationBartransparent {
    //设置导航栏背景图片为一个空的image，这样就透明了
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    //去掉透明后导航栏下边的黑边
    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc] init]];
     self.navigationController.navigationBar.translucent = YES ;
}
- (void)navgationBarOpaque {
    [self.navigationController.navigationBar setBackgroundImage:nil forBarMetrics:UIBarMetricsDefault]; [self.navigationController.navigationBar setShadowImage:nil];
    self.navigationController.navigationBar.translucent = NO;
}
@end
