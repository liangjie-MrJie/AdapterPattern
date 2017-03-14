//
//  ViewController.m
//  AdapterPattern
//
//  Created by liangjie on 2017/3/14.
//  Copyright © 2017年 liangjie. All rights reserved.
//

#import "ViewController.h"
#import "QButton.h"
#import "SpaceBar.h"
#import "SpaceBarAdapter.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 一开始使用Q按钮施放第一个技能
    id<Target> q = [[QButton alloc] init];
    [q active];
    
    // 后来想使用空格键来施放第一个技能，但是直接让space调用specificActive方法客户端就要修改代码（改变调用的接口）；不想改变原来的接口又达不到目的
    SpaceBar *space = [[SpaceBar alloc] init];
    //[space specificActive];
    //[SpaceBar active];
    
    // 通过使用适配器模式，我们就可以不改变调用接口，但是可以调用spaceBar的specificActive方法
    id<Target> spaceAdapter = [[SpaceBarAdapter alloc] initWithSpaceBar:space];
    [spaceAdapter active];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
