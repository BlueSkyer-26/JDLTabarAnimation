//
//  UIImage+Image.m
//  JDL
//
//  Created by 胜炫电子 on 2018/1/12.
//  Copyright © 2018年 BlueSkyer-25. All rights reserved.
//

#import "UIImage+Image.h"

@implementation UIImage (Image)
+(UIImage *)imageNameWithOriginMode:(NSString *)imageName{
    UIImage *image =[UIImage imageNamed:imageName];
    image =[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    return image;
}
@end
