//
//  JDLTest5ViewController.m
//  JDLAnimationTabbar
//
//  Created by 胜炫电子 on 2018/1/12.
//  Copyright © 2018年 BlueSkyer-25. All rights reserved.
//

#import "JDLTest5ViewController.h"
#import "JDLTest6ViewController.h"

@interface JDLTest5ViewController ()

@end

@implementation JDLTest5ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =[UIColor redColor];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"9090哈哈哈哈==%@",self.tabBarController);
    [self.tabBarController hideTabBar:YES animated:YES];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    JDLTest6ViewController *vc =[[JDLTest6ViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
