//
//  JDLTabBarController.m
//  JDL_BaiSiBuDeJie
//
//  Created by 胜炫电子 on 2018/1/11.
//  Copyright © 2018年 BlueSkyer-25. All rights reserved.
//

#import "JDLTabBarController.h"

#import "JDLTabBar.h"

#import "UIImage+Image.h"

@interface JDLTabBarController ()

@end

@implementation JDLTabBarController

static JDLTabBarController *_shareManager =nil;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupTabbarTextConfig];
    
    [self addChildViewContollers];
    
    [self createTabbar];
}

-(void)createTabbar{
    
    JDLTabBar *tabbar =[[JDLTabBar alloc] init];
    [self setValue:tabbar forKey:@"tabBar"];
}

-(void)setupTabbarTextConfig{
    
    NSMutableDictionary *attrus =[NSMutableDictionary dictionary];
    attrus[NSFontAttributeName] =[UIFont systemFontOfSize:12];
    attrus[NSForegroundColorAttributeName] =[UIColor lightGrayColor];
    
    NSMutableDictionary *selectAttrus =[NSMutableDictionary dictionary];
    selectAttrus[NSForegroundColorAttributeName] =[UIColor blackColor];
    
    UITabBarItem *item =[UITabBarItem appearance];
    [item setTitleTextAttributes:attrus forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectAttrus forState:UIControlStateSelected];
    
    //设置背景图片
//    [[UITabBar appearance] setBackgroundImage:[[UIImage alloc] init]];
    [[UITabBar appearance] setBackgroundColor:[UIColor whiteColor]];
    //去除 TabBar 自带的顶部阴影  去掉顶部黑线
    [[UITabBar appearance] setShadowImage:[[UIImage alloc] init]];
}

-(void)addChildViewContollers{
    
    [self createTabbarItemConfigureWith:@"JDLTest1ViewController" title:@"测试1" image:@"tabBar_essence_icon" selectImage:@"tabBar_essence_click_icon"];
    
    [self createTabbarItemConfigureWith:@"JDLTest2ViewController" title:@"测试2" image:@"tabBar_essence_icon" selectImage:@"tabBar_essence_click_icon"];
    
    [self createTabbarItemConfigureWith:@"JDLTest3ViewController" title:@"测试3" image:@"tabBar_essence_icon" selectImage:@"tabBar_essence_click_icon"];
    
    [self createTabbarItemConfigureWith:@"JDLTest4ViewController" title:@"测试4" image:@"tabBar_essence_icon" selectImage:@"tabBar_essence_click_icon"];
}

-(void)createTabbarItemConfigureWith:(NSString *)vcString  title:(NSString *)title image:(NSString *)imageName selectImage:(NSString *)selectImageName{
    
    UIViewController *vc =[[NSClassFromString(vcString) alloc] init];
    UINavigationController *Navc =[[UINavigationController alloc] initWithRootViewController:vc];
    
    vc.tabBarItem.title =title;
    vc.navigationItem.title =title;
    
    vc.tabBarItem.image =[UIImage imageNameWithOriginMode:imageName];
    vc.tabBarItem.selectedImage =[UIImage imageNameWithOriginMode:selectImageName];

    [self addChildViewController:Navc];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
