//
//  Hudview.m
//  FarmingInternetOfThings
//
//  Created by mac on 16/6/24.
//  Copyright © 2016年 CES. All rights reserved.
//

#import "Hudview.h"
@implementation Hudview
Hudview * HUD;
//传nil用默认的
+(id)showWithIndicator:(NSString*)text
{
    @synchronized(HUD){
        
        UIWindow * window =[UIApplication sharedApplication].windows.firstObject;
        
        if(!HUD){
            
            HUD= [[Hudview alloc] initWithView:window];
            
            [window addSubview:HUD];
            
        }
        
        HUD.bezelView.alpha=0.7f;//更改视图的背景透明图，第三方是0.8的透明度，可以根据自己的需要修改（备注，在结尾）
        
        HUD.mode= MBProgressHUDModeIndeterminate;// 样式，可以根据需要修改
        
        dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0), ^{
            
            // Do something useful in the background and update the HUD periodically.
            
            //            [HUD doSomeWorkWithProgress];//调用加载效果,比如进度条慢慢填满
            
        });
        
        HUD.label.text = text;//提示框的文字
        [HUD showAnimated:YES];//提示框出现
        
//        [HUD hide:YES afterDelay:3];//提示框出现持续的时间长短，根据自己的需要设置长短
        
        return HUD;
        
    }

}
//小菊花
+(id)showwithTextDailog:(NSString*)string
{
    @synchronized(HUD){
        
        UIWindow * window =[UIApplication sharedApplication].windows.firstObject;
        [HUD removeFromSuperview];
        HUD = nil;
        if(!HUD){
            
            HUD= [[Hudview alloc] initWithView:window];
            
            [window addSubview:HUD];
            
        }
        
        HUD.bezelView.alpha=0.7f;//更改视图的背景透明图，第三方是0.8的透明度，可以根据自己的需要修改（备注，在结尾）
        
        HUD.mode= MBProgressHUDModeText;// 样式，可以根据需要修改
        
        dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0), ^{
            
            // Do something useful in the background and update the HUD periodically.
            
            //            [HUD doSomeWorkWithProgress];//调用加载效果,比如进度条慢慢填满
            
        });
        
        HUD.label.text=string;//提示框的文字
        
        [HUD showAnimated:YES];//提示框出现
        
        [HUD hideAnimated:YES afterDelay:1];//提示框出现持续的时间长短，根据自己的需要设置长短
        
        return HUD;
        
    }
}
//饼状图
+(id)showwithCircleDailog:(NSString*)string
{
    @synchronized(HUD){
        [HUD removeFromSuperview];
        HUD = nil;
        UIWindow * window =[UIApplication sharedApplication].windows.firstObject;
        
        if(!HUD){
    
            HUD= [[Hudview alloc] initWithView:window];
            
            [window addSubview:HUD];
            
        }
        
        HUD.bezelView.alpha=0.7f;//更改视图的背景透明图，第三方是0.8的透明度，可以根据自己的需要修改（备注，在结尾）
        
        HUD.mode=MBProgressHUDModeIndeterminate;// 样式，可以根据需要修改
        
        dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0), ^{
            
            // Do something useful in the background and update the HUD periodically.
            
//            [HUD doSomeWorkWithProgress];//调用加载效果,比如进度条慢慢填满
            
        });
        
        HUD.label.text=string;//提示框的文字
        
        [HUD showAnimated:YES];//提示框出现
        
        [HUD hideAnimated:YES afterDelay:3];//提示框出现持续的时间长短，根据自己的需要设置长短
        
        return HUD;
        
    }
    
}
+(id)showWithIndicatorToView:(UIView *)view{
    @synchronized(HUD){
        [HUD removeFromSuperview];
        HUD = nil;
        if(HUD == nil){
            
            HUD= [Hudview showHUDAddedTo:view animated:YES];
            [view addSubview:HUD];
        }
//        HUD.backgroundColor = UIColorFromRGB(0xf5f5f5);
        HUD.bezelView.alpha=0.1f;//更改视图的背景透明图，第三方是0.8的透明度，可以根据自己的需要修改（）
        
        HUD.mode= MBProgressHUDModeIndeterminate;// 样式，可以根据需要修改
        
        dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0), ^{
            
            // Do something useful in the background and update the HUD periodically.
            
            //            [HUD doSomeWorkWithProgress];//调用加载效果,比如进度条慢慢填满
        });
//        HUD.labelText = text;//提示框的文字
        [HUD showAnimated:YES];//提示框出现
        //        [HUD hide:YES afterDelay:3];//提示框出现持续的时间长短，根据自己的需要设置长短
        return HUD;
    }
}

+(void)hide
{
    if (HUD) {
        
        [HUD hideAnimated:YES];
        
        HUD = nil;
        
    }
}
@end
