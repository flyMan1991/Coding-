//
//  UIView+ColorGrad.m
//  Farming
//
//  Created by mac on 2016/10/8.
//  Copyright © 2016年 CES. All rights reserved.
//

#import "UIView+ColorGrad.h"

@implementation UIView (ColorGrad)

- (void)configColorGradWithColors:(NSArray *)colors
                       startPoint:(CGPoint )startPoint
                         endPoint:(CGPoint )endPoint {
    CAGradientLayer * layer = [CAGradientLayer layer];
    layer.startPoint = startPoint;
    layer.endPoint = endPoint;
    layer.colors = colors;
    layer.frame = self.bounds;
    [self.layer addSublayer:layer];
}

@end
