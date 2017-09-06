//
//  NSTimer+ZGBlockSupport.m
//  ClassForTimerBlock
//
//  Created by Zhuge_Magic on 2017/9/6.
//  Copyright © 2017年 magic. All rights reserved.
//

#import "NSTimer+ZGBlockSupport.h"

@implementation NSTimer (ZGBlockSupport)
+ (NSTimer *)zg_scheduledTimerWithTimeInterval:(NSTimeInterval)interval block:(void(^)())block repeats:(BOOL)yesOrNo
{
    return [self scheduledTimerWithTimeInterval:interval target:self selector:@selector(zg_block:) userInfo:[block copy] repeats:yesOrNo];
}
+ (void)zg_block:(NSTimer *)timer
{
    void(^block)() = timer.userInfo;
    if (block) {
        block();
    }
}
@end
