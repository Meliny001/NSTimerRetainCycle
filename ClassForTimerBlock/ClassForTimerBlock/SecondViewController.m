//
//  SecondViewController.m
//  ClassForTimerBlock
//
//  Created by Zhuge_Magic on 2017/9/6.
//  Copyright © 2017年 magic. All rights reserved.
//

#import "SecondViewController.h"
#import "NSTimer+ZGBlockSupport.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
{
    NSTimer * _timer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    _timer = [NSTimer zg_scheduledTimerWithTimeInterval:1 block:^{
        NSLog(@"1");
    } repeats:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
- (void)dealloc
{
    [_timer invalidate];
    _timer = nil;
    NSLog(@"dealloc");
}


@end
