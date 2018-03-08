//
//  FirstModel.m
//  MVC架构
//
//  Created by xunli on 2018/3/8.
//  Copyright © 2018年 caoji. All rights reserved.
//

#import "FirstModel.h"

@implementation FirstModel
- (void)save{
    
    NSLog(@"保存。。。");
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"saveSucessful" object:self];  //使用Notification模式发送一个通知，用于通知Controller要做什么事情
    
}

- (void)load{
    
    NSLog(@"加载。。。");
    
}  
@end
