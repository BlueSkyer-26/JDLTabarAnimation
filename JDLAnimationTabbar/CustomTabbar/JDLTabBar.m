//
//  JDLTabBar.m
//  JDL
//
//  Created by 胜炫电子 on 2018/1/11.
//  Copyright © 2018年 BlueSkyer-25. All rights reserved.
//

#import "JDLTabBar.h"

#define tabbarHeihgt 49

@interface JDLTabBar ()

@property (nonatomic,weak) UIButton *centerBtn;

@end

@implementation JDLTabBar

-(UIButton *)centerBtn{

    if (!_centerBtn) {
        UIButton *btn =[UIButton buttonWithType:UIButtonTypeCustom];
        [btn setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [btn sizeToFit];
        [self addSubview:btn];
        _centerBtn =btn;

    }
    return _centerBtn;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    
    CGFloat width =self.bounds.size.width/(self.items.count +1);
    CGFloat height =tabbarHeihgt;
    CGFloat x =0;
    int index =0;
    for (UIView *view in self.subviews) {
        if ([view isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            if (index ==2) {
                index +=1;
            }
            view.frame =CGRectMake(x + width *index, 0, width, height);
            index ++;
        }
    }
    
    self.centerBtn.center =CGPointMake(self.bounds.size.width *0.5, height *0.5);
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    if (self.clipsToBounds || self.hidden || (self.alpha == 0.f)) {
        return nil;
    }
    UIView *result = [super hitTest:point withEvent:event];
    // 如果事件发生在 tabbar 里面直接返回
    if (result) {
        return result;
    }
    // 这里遍历那些超出的部分就可以了，不过这么写比较通用。
    for (UIView *subview in self.subviews) {
        // 把这个坐标从tabbar的坐标系转为 subview 的坐标系
        CGPoint subPoint = [subview convertPoint:point fromView:self];
        result = [subview hitTest:subPoint withEvent:event];
        // 如果事件发生在 subView 里就返回
        if (result) {
            return result;
        }
    }
    return nil;
}



@end
