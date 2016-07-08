//
//  Person1.m
//  RuntimeDemo
//
//  Created by zyh on 16/7/8.
//  Copyright © 2016年 zyh. All rights reserved.
//

#import "Person1.h"
#import <objc/message.h>

void eat(id self, SEL _cmd,id param)
{
    NSLog(@"eat%@",param);
}

@implementation Person1

//动态添加方法首先会调用这个方法
//调用：当调用了没有实现的方法的时候会调用这个方法
//作用：就知道哪些方法没有实现，从而动态添加方法
//sel:没有实现的方法
+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    //方法没有实现动态添加方法
    if (sel == @selector(eat:)) {
        
//        NSLog(@"%@",NSStringFromSelector(sel));
        
        //动态添加方法
        //cls：给哪类添加方法
        //sel：添加的方法的编号是什么
        //imp：方法实现，函数入口,函数名
        //types:方法的类型
        //@ 表示对象  ：表示 SEL
        class_addMethod(self, sel, (IMP)eat, "V@:@");
        
        return YES;
    }
    
    return [super resolveInstanceMethod:sel];
}
@end
