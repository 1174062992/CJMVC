//
//  MVCViewController.m
//  MVC架构
//
//  Created by xunli on 2018/3/8.
//  Copyright © 2018年 caoji. All rights reserved.
//

#import "MVCViewController.h"
#define deviceScreenWidth [[UIScreen mainScreen]bounds].size.width

#define deviceScreenHeight [[UIScreen mainScreen]bounds].size.height
@interface MVCViewController ()

@end

@implementation MVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor =[UIColor whiteColor];
    self.title =@"MVC设计模式";
    //
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(saveOK:)
                                                 name:@"saveSucessful" object:nil];  //添加一个通知方法，当这个Controller接收到一个名称为@"saveSucessful"的通知后，就执行saveOK:方法
    
    
    _aView = [[FirstView alloc]initWithFrame:CGRectMake(0, 64, deviceScreenWidth, deviceScreenHeight)];  //初始化时一定要设置frame，否则VView上的两个按钮将无法被点击
    
    [_aView viewInit];
    
    [_aView.Savebutton addTarget:self action:@selector(saveBtnPressed:) forControlEvents:UIControlEventTouchUpInside];  //为“保存”按钮添加target-action模式
    
    [_aView.Lodebutton addTarget:self action:@selector(loadBtnPressed:) forControlEvents:UIControlEventTouchUpInside];  //为“加载”按钮添加target-action模式
    
    [self.view addSubview:_aView];
    
    _mModel = [[FirstModel alloc]init];
}
- (void)saveBtnPressed : (UIButton*)sender{
    
    [_mModel save];  //调用MModel.h中的方法(API)
}

- (void)loadBtnPressed : (UIButton*)sender{
    
    [_mModel load];  //调用MModel.h中的方法(API)
}
- (void)saveOK : (NSNotification*) notification{
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"恭喜"
                                                                             message:@"保存成功"
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        
        NSLog(@"点击了取消按钮");
        
    }];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        NSLog(@"点击了确定按钮");
        
    }];
    
    [alertController addAction:cancelAction];
    [alertController addAction:okAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
