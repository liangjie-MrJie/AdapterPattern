//
//  Target.h
//  AdapterPattern
//
//  Created by liangjie on 2017/3/14.
//  Copyright © 2017年 liangjie. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Target <NSObject>
@optional
- (void)active;

@end
