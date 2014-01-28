//
//  YSAppirater.m
//  YSAppiraterExample
//
//  Created by Yu Sugawara on 2014/01/28.
//  Copyright (c) 2014年 Yu Sugawara. All rights reserved.
//

#import "YSAppirater.h"
#import <Appirater/Appirater.h>

@implementation YSAppirater

+ (void)launchWithAppId:(NSString*)appId
        daysUntilPrompt:(double)daysUntilPrompt
        usesUntilPrompt:(NSInteger)usesUntilPrompt
    timeBeforeReminding:(double)timeBeforeReminding
                  debug:(BOOL)debug
{
    [Appirater setAppId:appId];
    [Appirater setDaysUntilPrompt:daysUntilPrompt];
    [Appirater setUsesUntilPrompt:usesUntilPrompt];
    [Appirater setTimeBeforeReminding:timeBeforeReminding];
#if DEBUG
    [Appirater setDebug:debug];
#endif
    [Appirater appLaunched:YES];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(UIApplicationWillEnterForegroundNotification:)
                                                 name:UIApplicationWillEnterForegroundNotification
                                               object:nil];
}

+ (void)UIApplicationWillEnterForegroundNotification:(NSNotification*)notification
{
    [Appirater appEnteredForeground:YES];
}

@end
