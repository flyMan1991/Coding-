//
//  UIView+ColorGrad.h
//  Farming
//
//  Created by mac on 2016/10/8.
//  Copyright © 2016年 CES. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ColorGrad)
- (void)configColorGradWithColors:(NSArray *)colors
                           startPoint:(CGPoint )startPoint
                             endPoint:(CGPoint )endPoint;
@end
