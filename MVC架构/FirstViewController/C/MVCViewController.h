//
//  MVCViewController.h
//  MVC架构
//
//  Created by xunli on 2018/3/8.
//  Copyright © 2018年 caoji. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstView.h"
#import "FirstModel.h"
@interface MVCViewController : UIViewController
/**
 *实例化一个view对象
 */
@property(nonatomic,strong)FirstView* aView;
/**
 *实例化一个model对象，以便于点用model中的API
 */
@property(nonatomic,strong)FirstModel* mModel;
@end
