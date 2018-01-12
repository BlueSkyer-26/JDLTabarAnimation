//
//  JDLTest1ViewController.m
//  JDLAnimationTabbar
//
//  Created by 胜炫电子 on 2018/1/12.
//  Copyright © 2018年 BlueSkyer-25. All rights reserved.
//

#import "JDLTest1ViewController.h"
#import "JDLTest5ViewController.h"

@interface JDLTest1ViewController ()

@end

@implementation JDLTest1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =[UIColor orangeColor];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.tabBarController hideTabBar:NO animated:YES];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    JDLTest5ViewController *vc =[[JDLTest5ViewController alloc] init];
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
