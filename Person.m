//
//  Person.m
//  RuntimeDemo
//
//  Created by zyh on 16/7/8.
//  Copyright © 2016年 zyh. All rights reserved.
//

#import "Person.h"

@implementation Person


- (void)eat
{
    NSLog(@"对象方法");
}

+ (void)eat
{
    NSLog(@"类方法");
}

@end
