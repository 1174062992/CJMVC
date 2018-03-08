//
//  FirstView.m
//  MVC架构
//
//  Created by xunli on 2018/3/8.
//  Copyright © 2018年 caoji. All rights reserved.
//

#import "FirstView.h"

@implementation FirstView

/**
 *初始化方法实现
 */
-(void)viewInit{
    self.Savebutton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [self.Savebutton setFrame:CGRectMake(50, 50, self.frame.size.width-100, 80)];
    
    self.Savebutton.backgroundColor =[UIColor colorWithRed:247/255.0 green:249/255.0 blue:251/255.0 alpha:1.0];
    
    [self.Savebutton setTitle:@"保存" forState:UIControlStateNormal];
    
    [self.Savebutton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];  //默认的页面背景色是白色，butotn上的文字的默认颜色也是白色，所以在此处将button上的文字颜色设置为黑色，以便显示
    
    [self addSubview:self.Savebutton];
    
    
    self.Lodebutton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    self.Lodebutton.backgroundColor =[UIColor colorWithRed:247/255.0 green:249/255.0 blue:251/255.0 alpha:1.0];
    
    [self.Lodebutton setFrame:CGRectMake(50, 160, self.frame.size.width-100, 80)];
    
    [self.Lodebutton setTitle:@"加载" forState:UIControlStateNormal];
    
    [self.Lodebutton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [self addSubview:self.Lodebutton];
}

@end
