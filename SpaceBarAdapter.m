//
//  SpaceBarAdapter.m
//  AdapterPattern
//
//  Created by liangjie on 2017/3/14.
//  Copyright © 2017年 liangjie. All rights reserved.
//

#import "SpaceBarAdapter.h"
#import "SpaceBar.h"

@interface SpaceBarAdapter ()
@property (nonatomic, strong) SpaceBar *spaceBar;
@end

@implementation SpaceBarAdapter
- (instancetype)initWithSpaceBar:(SpaceBar *)spaceBar {
    self = [super init];
    if (self) {
        _spaceBar = spaceBar;
    }
    return self;
}

- (void)active {
    [_spaceBar specificActive];
}

@end
