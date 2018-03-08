//
//  FirstView.h
//  MVC架构
//
//  Created by xunli on 2018/3/8.
//  Copyright © 2018年 caoji. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstView : UIView
/**
 *保存按钮
 */
@property(nonatomic,strong)UIButton* Savebutton;
/**
 *加载按钮
 */
@property(nonatomic,strong)UIButton* Lodebutton;
/**
 *初始化方法
 */
-(void)viewInit;
@end
