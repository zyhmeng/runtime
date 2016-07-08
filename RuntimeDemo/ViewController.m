//
//  ViewController.m
//  RuntimeDemo
//
//  Created by zyh on 16/7/8.
//  Copyright © 2016年 zyh. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Person1.h"

// 使用运行时第一步：
// 第二步： 搜索msg  设置为NO
#import <objc/message.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //运行时发送消息机制
    [self runtimeMsgSend];
    
    
    //运行时交换方法机制
    [self runtimeChangeMethod];
    
    
    //运行时动态添加方法
    [self runtimeAddMethod];
}

- (void)runtimeAddMethod
{
    Person1 *p = [[Person1 alloc]init];
    
//    [p performSelector:@selector(eat)];
    
    [p performSelector:@selector(eat:) withObject:@111];
}

- (void)runtimeChangeMethod
{
    UIImage *image = [UIImage imageNamed:@"1223"];
}

- (void)runtimeMsgSend
{
    
    Person *p = [[Person alloc]init];
    
    //    [p eat];
    
    // OC:运行时机制，消息机制是运行时机制最重要的机制
    // 消息机制：任何方法调用，本质都是发消息
    
    //SEL:方法编号：根据方法编号就能找到对应的方法
    //    [p performSelector:@selector(eat)];
    
    //    Xcode5之后设置 build setting 搜索msg  设置为NO
    
    //让P发送一个消息
    //    objc_msgSend(p, @selector(eat));
    
    //类调用的时候
    //    [[Person class] performSelector:@selector(eat)];
    
    //类 --- > 运行时的情况
    
    objc_msgSend([Person class], @selector(eat));
}



@end
