//
//  YSAppirater.h
//  YSAppiraterExample
//
//  Created by Yu Sugawara on 2014/01/28.
//  Copyright (c) 2014年 Yu Sugawara. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YSAppirater : NSObject

/**
    インストールからdaysUntilPrompt日経過しかつusesUntilPrompt回起動されたらアラートを表示する。
    アラートで「あとで」を選択されたらtimeBeforeReminding日後再度アラートを表示する。
 */

+ (void)launchWithAppId:(NSString*)appId // アプリのiTunes StoreのID
        daysUntilPrompt:(double)daysUntilPrompt // インストールから何日経過後に表示するか
        usesUntilPrompt:(NSInteger)usesUntilPrompt // 何回起動で表示するか(バックグランドからの復帰も含む)
    timeBeforeReminding:(double)timeBeforeReminding // 「あとで」を選択された場合に何日後に再度表示するか
                  debug:(BOOL)debug; // 上記引数を無視しアラートを表示するか(DEBUG時のみ有効)

@end
