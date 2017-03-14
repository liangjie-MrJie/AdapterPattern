//
//  SpaceBar.m
//  AdapterPattern
//
//  Created by liangjie on 2017/3/14.
//  Copyright © 2017年 liangjie. All rights reserved.
//

#import "SpaceBar.h"

@implementation SpaceBar
- (void)specificActive {
    // 如果空格键被适配成了Q按钮，那么就会施放第一个技能
    NSLog(@"施放空格键所指向的技能");
}
@end
