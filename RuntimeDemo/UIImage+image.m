//
//  UIImage+image.m
//  RuntimeDemo
//
//  Created by zyh on 16/7/8.
//  Copyright © 2016年 zyh. All rights reserved.
//

#import "UIImage+image.h"
#import <objc/message.h>

@implementation UIImage (image)

+ (UIImage *)yh_imageNamed:(NSString *)name
{
    UIImage *image = [UIImage yh_imageNamed:name];
    
    if (image == nil) {
        
        NSLog(@"加载image为空");
    }
    return image;
}

+ (void)load
{
    //class_getMethodImplementation:获取方法实现
//    class_getMethodImplementation(<#__unsafe_unretained Class cls#>, <#SEL name#>)
  
    //class_getInstanceMethod:获取对象方法
//    class_getInstanceMethod(<#__unsafe_unretained Class cls#>, <#SEL name#>)
    
    
    //获取类方法
    //Class  哪个类
    //SEL    哪个方法
    Method imageNamedMethod = class_getClassMethod([UIImage class], @selector(imageNamed:));
    
    Method yh_imageNamedMethod = class_getClassMethod([UIImage class], @selector(yh_imageNamed:));
    
    // 交换方法实现
    method_exchangeImplementations(imageNamedMethod, yh_imageNamedMethod);
}


@end
