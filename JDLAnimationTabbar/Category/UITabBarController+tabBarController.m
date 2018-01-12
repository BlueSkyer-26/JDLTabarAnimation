//
//  UITabBarController+tabBarController.m
//  JDL
//
//  Created by 胜炫电子 on 2018/1/12.
//  Copyright © 2018年 BlueSkyer-25. All rights reserved.
//

#import "UITabBarController+tabBarController.h"

// 判断是否是iPhone X
#define KIS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)
// 状态栏高度
#define KStatusHeight (KIS_IPHONE_X ? 44.f : 20.f)
// 导航栏高度
#define KNavbarHeight (KIS_IPHONE_X ? 88.f : 64.f)
// tabBar高度
#define KTabBarHeight (KIS_IPHONE_X ? (49.f+34.f) : 49.f)


@implementation UITabBarController (tabBarController)
#pragma mark 是否隐藏tabBar
- (void)hideTabBar:(BOOL)hide animated:(BOOL)animated{
    
    if (hide == YES)
    {
        if (self.tabBar.frame.origin.y == self.view.frame.size.height) return;
    }
    else
    {
        if (self.tabBar.frame.origin.y == self.view.frame.size.height - KTabBarHeight) return;
    }
    if (animated == YES)
    {
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:0.3f];
        if (hide == YES)
        {
            self.tabBar.frame = CGRectMake(self.tabBar.frame.origin.x, self.tabBar.frame.origin.y + KTabBarHeight, self.tabBar.frame.size.width, self.tabBar.frame.size.height);
            self.tabBar.alpha =0.0;
        }
        else
        {
            self.tabBar.frame = CGRectMake(self.tabBar.frame.origin.x, self.tabBar.frame.origin.y - KTabBarHeight, self.tabBar.frame.size.width, self.tabBar.frame.size.height);
            self.tabBar.alpha =1.0;
        }
        [UIView commitAnimations];
    }
    else
    {
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:0.3f];
        if (hide == YES)
        {
            self.tabBar.frame = CGRectMake(self.tabBar.frame.origin.x, self.tabBar.frame.origin.y + KTabBarHeight, self.tabBar.frame.size.width, self.tabBar.frame.size.height);
        }
        else
        {
            self.tabBar.frame = CGRectMake(self.tabBar.frame.origin.x, self.tabBar.frame.origin.y - KTabBarHeight, self.tabBar.frame.size.width, self.tabBar.frame.size.height);
        }
        [UIView commitAnimations];
    }
}
@end
