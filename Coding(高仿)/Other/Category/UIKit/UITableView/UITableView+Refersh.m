//
//  UITableView+Refersh.m
//  CTNetworking
//
//  Created by mac on 16/9/9.
//  Copyright © 2016年 Long Fan. All rights reserved.
//

#import "UITableView+Refersh.h"
#import <MJRefresh/MJRefresh.h>
@implementation UITableView (Refersh)
- (void)footerAddRefershTarget:(id )target  Selector:(SEL)selector {
    self.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingTarget:target refreshingAction:selector];
}
- (void)headerAddRefershTarget:(id )target  Selector:(SEL)selector  {
    self.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:target refreshingAction:selector];
}
- (void)endRefresh {
    [ self.mj_header endRefreshing];
    [ self.mj_footer  endRefreshing];
}
@end
