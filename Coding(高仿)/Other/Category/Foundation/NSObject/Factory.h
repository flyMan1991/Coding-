//
//  Factory.h
//  FarmingInternetOfThings
//
//  Created by mac on 16/6/28.
//  Copyright © 2016年 CES. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Factory : NSObject
//创建Button的工厂，将特殊的元素传入，生产相对应的Button
+ (UIButton *)createButtonWithTitle:(NSString *)title  target:(id)target selector:(SEL)selector;
+ (UIButton *)createButtonWithTitle:(NSString *)title backgroundColor:(UIColor *)color target:(id)target selector:(SEL)selector;
+ (UIButton *)createButtonWithTitle:(NSString *)title backgroundColor:(UIColor *)color fontSize:(CGFloat)size target:(id)target selector:(SEL)selector;
+ (UIButton *)createButtonWithTitle:(NSString *)title  backgroundColor:(UIColor *)color fontSize:(CGFloat)size image:(UIImage *)image target:(id)target selector:(SEL)selector;
+ (UIButton *)createButtonWithTitle:(NSString *)title   backgroundColor:(UIColor *)color fontSize:(CGFloat)size backgroundImage:(UIImage *)bgImage target:(id)target selector:(SEL)selector;
+ (UIButton *)createButtonWithTitle:(NSString *)title
                    backgroundColor:(UIColor *)color
                           fontSize:(CGFloat)size
                              image:(UIImage *)image
                    backgroundImage:(UIImage *)backgroundImage
                             target:(id)target
                           selector:(SEL)selector;

+ (UIButton *)createButtonWithTitle:(NSString *)title
                    backgroundColor:(UIColor *)color
                         titleColor:(UIColor *)titleColor
                           fontSize:(CGFloat)size
                              image:(UIImage *)image
                    backgroundImage:(UIImage *)backgroundImage
                             target:(id)target
                           selector:(SEL)selector;
//创建Label的工厂，将特殊的元素传入，生产相对应的Label
+ (UILabel *)createLabelWithTitle:(NSString *)title textAlignment:(NSTextAlignment)textAlignment;
+ (UILabel *)createLabelWithTitle:(NSString *)title   textColor:(UIColor *)color textAlignment:(NSTextAlignment)textAlignment;
+ (UILabel *)createLabelWithTitle:(NSString *)title   fontSize:(CGFloat)size textAlignment:(NSTextAlignment)textAlignment;
+ (UILabel *)createLabelWithTitle:(NSString *)title   textColor:(UIColor *)color fontSize:(CGFloat)size textAlignment:(NSTextAlignment)textAlignment;

//创建View的工厂，将特殊的元素传入，生产相应的View
+ (UIView *)createViewWithBackgroundColor:(UIColor *)color;

//创建textField的工厂，将特殊的元素传入，生产响应的textField
+ (UITextField *)createViewWithText:(NSString *)text   placeholder:(NSString *)placeholder textColor:(UIColor *)color borderStyle:(UITextBorderStyle)borderStyle;

@end
