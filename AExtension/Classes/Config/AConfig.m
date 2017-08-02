//
//  AConfig.m
//  Pods
//
//  Created by abyss on 2017/7/27.
//
//

#import "AConfig.h"
#import <AExtension/AFileUtil.h>

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

+ (void)env
{
    NSLog(@"\n\n读取配置=====");
    NSLog(@"%@",_config?:@{});
    NSLog(@"\n\n================");
}

/** 网络配置文件版本号 */
+ (NSString *)netVersion
{
    return [APP_CONFIG objectForKey:@"Version"]?:@"";
}

/** 取配置, json */
+ (void)loadConfig:(NSString *)file
{
    NSData* netConfig = [AFileUtil fileRead:file];
    
    if (netConfig)
    {
        [AConfig loadConfigData:netConfig];
    }
    else
    {
        // 本地数据
        NSString* path = [[NSBundle mainBundle] pathForResource:file ofType:nil];
        NSData* data = [[NSFileManager defaultManager] contentsAtPath:path];

        [AConfig loadConfigData:data];
    }
}

+ (void)loadConfigData:(NSData *)data
{
    NSError* error = nil;
    [AConfig setConfig:[NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error]];
    
    NSAssert1(APP_CONFIG, @"%@", error);
}

@end
