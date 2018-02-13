//
//  MAHomeViewController.m
//  MVVMArchitectureDemo
//
//  Created by gonghonglou on 2018/2/12.
//  Copyright © 2018年 Troy. All rights reserved.
//

#import "MAHomeViewController.h"
#import "MAHomeViewContainer.h"
#import "MAHomeViewModel.h"
#import <ReactiveObjC/ReactiveObjC.h>

@interface MAHomeViewController ()

@property (nonatomic, strong) MAHomeViewContainer *viewContainer;

@property (nonatomic, strong) MAHomeViewModel *viewModel;

@end

@implementation MAHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // viewModel
    self.viewModel = [MAHomeViewModel new];
    // layoutUI
    [self layoutUI];
}


/**
 页面布局
 */
- (void)layoutUI {
    // title
    self.navigationItem.title = @"主页";
    // viewContainer
    self.viewContainer = [MAHomeViewContainer new];
    self.view = self.viewContainer;
}

@end
