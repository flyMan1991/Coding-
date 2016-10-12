//
//  UITableView+Refersh.h
//  CTNetworking
//
//  Created by mac on 16/9/9.
//  Copyright © 2016年 Long Fan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (Refersh)
- (void)footerAddRefershTarget:(id )target  Selector:(SEL)selector;
- (void)headerAddRefershTarget:(id )target  Selector:(SEL)selector;
- (void)endRefresh;
@end
