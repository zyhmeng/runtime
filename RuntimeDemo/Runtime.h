//
//  Runtime.h
//  RuntimeDemo
//
//  Created by zyh on 16/7/8.
//  Copyright © 2016年 zyh. All rights reserved.
//

#ifndef Runtime_h
#define Runtime_h


/*
 runtime 消息运行机制调用方法时，底层实现流程
 
 【personClass eat】 -->  [performSelector:eat]  -->  SEL:eat
 
 每个类里面都一个Method List (方法编号列表)类会找相应的方法编号 通过方法编号找到相应的方法，然后调用
 
 
 runtime 消息运行机制方法交换：调用method_exchangeImplementations的方法，可以实现两个方法的交换
 */

#endif /* Runtime_h */
