//
//  Factory.m
//  FarmingInternetOfThings
//
//  Created by mac on 16/6/28.
//  Copyright © 2016年 CES. All rights reserved.
//

#import "Factory.h"
#import "ConfigurationHeader.h"
@implementation Factory
//创建Button的工厂，将特殊的元素传入，生产相对应的Button
+ (UIButton *)createButtonWithTitle:(NSString *)title  target:(id)target selector:(SEL)selector {
    return [self createButtonWithTitle:title backgroundColor:nil target:target selector:selector];
}
+ (UIButton *)createButtonWithTitle:(NSString *)title backgroundColor:(UIColor *)color target:(id)target selector:(SEL)selector {
    return [self createButtonWithTitle:title  backgroundColor:color fontSize:18.f target:target selector:selector];
}
+ (UIButton *)createButtonWithTitle:(NSString *)title backgroundColor:(UIColor *)color fontSize:(CGFloat)size target:(id)target selector:(SEL)selector {
    return [self createButtonWithTitle:title  backgroundColor:color fontSize:size image:nil target:target selector:selector];
}
+ (UIButton *)createButtonWithTitle:(NSString *)title  backgroundColor:(UIColor *)color fontSize:(CGFloat)size image:(UIImage *)image target:(id)target selector:(SEL)selector {
    return [self createButtonWithTitle:title  backgroundColor:color fontSize:size image:image backgroundImage:nil target:target selector:selector];
}
+ (UIButton *)createButtonWithTitle:(NSString *)title   backgroundColor:(UIColor *)color fontSize:(CGFloat)size backgroundImage:(UIImage *)bgImage target:(id)target selector:(SEL)selector {
     return [self createButtonWithTitle:title backgroundColor:color fontSize:size backgroundImage:bgImage target:target selector:selector];
}
+ (UIButton *)createButtonWithTitle:(NSString *)title
                    backgroundColor:(UIColor *)color
                           fontSize:(CGFloat)size
                              image:(UIImage *)image
                    backgroundImage:(UIImage *)backgroundImage
                             target:(id)target
                           selector:(SEL)selector {
    return [self createButtonWithTitle:title backgroundColor:color titleColor:BlackColor fontSize:size image:image backgroundImage:backgroundImage target:target selector:selector];
}
+ (UIButton *)createButtonWithTitle:(NSString *)title
                    backgroundColor:(UIColor *)color
                         titleColor:(UIColor *)titleColor
                           fontSize:(CGFloat)size
                              image:(UIImage *)image
                    backgroundImage:(UIImage *)backgroundImage
                             target:(id)target
                           selector:(SEL)selector
{
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.layer.cornerRadius = 3.0f;
    button.layer.masksToBounds  = YES;
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    button.backgroundColor = color;
    [button setTitle:title forState:UIControlStateNormal];
    if (image != nil) {
        [button setImage:image forState:UIControlStateNormal];
    }
    if (backgroundImage != nil) {
        [button setBackgroundImage:backgroundImage forState:UIControlStateNormal];
    }
    [button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    return button;
}

//创建Label的工厂，将特殊的元素传入，生产相对应的Label
+ (UILabel *)createLabelWithTitle:(NSString *)title  textAlignment:(NSTextAlignment)textAlignment{
   return  [self createLabelWithTitle:title fontSize:14.0f textAlignment:textAlignment];
}
+ (UILabel *)createLabelWithTitle:(NSString *)title   textColor:(UIColor *)color  textAlignment:(NSTextAlignment)textAlignment {
    return [self createLabelWithTitle:title textColor:color fontSize:14.0f textAlignment:textAlignment];
}
+ (UILabel *)createLabelWithTitle:(NSString *)title   fontSize:(CGFloat)size textAlignment:(NSTextAlignment)textAlignment {
    return [self createLabelWithTitle:title textColor:[UIColor blackColor] fontSize:size textAlignment:textAlignment];
}
+ (UILabel *)createLabelWithTitle:(NSString *)title   textColor:(UIColor *)color fontSize:(CGFloat)size  textAlignment:(NSTextAlignment)textAlignment{
    UILabel * label = [[UILabel alloc] init];
    label.text = title;
    label.textAlignment = textAlignment;
    label.textColor = color;
    label.font = FONT(size);
    return label;
}

//创建View的工厂，将特殊的元素传入，生产相应的View
+ (UIView *)createViewWithBackgroundColor:(UIColor *)color {
    UIView * view = [[UIView alloc] init];
    view.backgroundColor = color;
    return view;
}

//创建textField的工厂，将特殊的元素传入，生产响应的textField
+ (UITextField *)createViewWithText:(NSString *)text   placeholder:(NSString *)placeholder textColor:(UIColor *)color borderStyle:(UITextBorderStyle)borderStyle {
    UITextField *textField = [[UITextField alloc] init];
    textField.placeholder = placeholder;
    textField.borderStyle = borderStyle;
    textField.text = text;
    textField.textColor = color;
    return textField;
}


@end
