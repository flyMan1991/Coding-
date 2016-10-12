//
//  Hudview.h
//  FarmingInternetOfThings
//
//  Created by mac on 16/6/24.
//  Copyright © 2016年 CES. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>
#import <UIKit/UIKit.h>
@interface Hudview : MBProgressHUD
+(id)showWithIndicator:(NSString*)text;//小菊花

+(id)showwithTextDailog:(NSString*)string;//只显示文本

+(id)showwithCircleDailog:(NSString*)string;//饼状图

+(void)hide;//隐藏hud

+(id)showWithIndicatorToView:(UIView *)view;

@end
