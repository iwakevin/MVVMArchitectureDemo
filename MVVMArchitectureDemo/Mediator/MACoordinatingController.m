//
//  MACoordinatingController.m
//  MVVMArchitectureDemo
//
//  Created by gonghonglou on 2018/2/12.
//  Copyright © 2018年 Troy. All rights reserved.
//

#import "MACoordinatingController.h"
#import "MALoginViewController.h"

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

@end
