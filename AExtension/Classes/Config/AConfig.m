//
//  AConfig.m
//  Pods
//
//  Created by abyss on 2017/7/27.
//
//

#import "AConfig.h"

static NSDictionary* _config = nil;

@implementation AConfig

/** 配置文件 */
+ (NSDictionary *)config
{
    return _config?:@{};
}

+ (void)setConfig:(NSDictionary *)config
{
    if (!config || config.allKeys.count == 0) return;
    _config = config;
}

@end
