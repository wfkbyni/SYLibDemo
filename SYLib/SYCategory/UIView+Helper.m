//
//  UIView+Helper.m
//  SYLibDemo
//
//  Created by 舒永超 on 2020/9/24.
//  Copyright © 2020 舒永超. All rights reserved.
//

#import "UIView+Helper.h"

@implementation UIView (Helper)

-(CGFloat)getViewWidth {
    return CGRectGetWidth(self.frame);
}

-(CGFloat)getViewHeight {
    return CGRectGetHeight(self.frame);
}

@end
