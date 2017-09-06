//
//  NSTimer+ZGBlockSupport.h
//  ClassForTimerBlock
//
//  Created by Zhuge_Magic on 2017/9/6.
//  Copyright © 2017年 magic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (ZGBlockSupport)
+ (NSTimer *)zg_scheduledTimerWithTimeInterval:(NSTimeInterval)interval block:(void(^)())block repeats:(BOOL)yesOrNo;
@end
