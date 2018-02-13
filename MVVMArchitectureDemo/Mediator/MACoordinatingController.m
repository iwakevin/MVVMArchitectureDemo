//
//  MACoordinatingController.m
//  MVVMArchitectureDemo
//
//  Created by gonghonglou on 2018/2/12.
//  Copyright © 2018年 Troy. All rights reserved.
//

#import "MACoordinatingController.h"
#import "MALoginViewController.h"
#import "MAHomeViewController.h"

@interface MACoordinatingController ()

@property (nonatomic, strong) MAHomeViewController *homeVC;

@end

@implementation MACoordinatingController

/**
 单例
 
 @return MACoordinatingController
 */
+ (MACoordinatingController *)sharedInstance {
    static MACoordinatingController *sharedInstance = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

/**
 初始化
 
 @return MACoordinatingController
 */
- (instancetype)init {
    self = [super init];
    if (self) {
        _activeViewController = [MALoginViewController new];
    }
    return self;
}


/**
 中介者推出 ViewController 的基础方法

 @param viewController  待推出的页面
 @param animated        动画
 */
- (void)mediatorPushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    [_activeViewController.navigationController pushViewController:viewController animated:animated];
    _activeViewController = viewController;
}


/**
 推出首页
 */
- (void)pushToHomeViewController {
    if (!self.homeVC) self.homeVC = [MAHomeViewController new];
    [self mediatorPushViewController:self.homeVC animated:YES];
}

@end
