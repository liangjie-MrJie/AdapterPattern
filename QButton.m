//
//  QButton.m
//  AdapterPattern
//
//  Created by liangjie on 2017/3/14.
//  Copyright © 2017年 liangjie. All rights reserved.
//

#import "QButton.h"

@implementation QButton
- (void)active {
    [self specificActive];
}
- (void)specificActive {
    NSLog(@"施放第一个技能");
}
@end
