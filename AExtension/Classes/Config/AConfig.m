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

+ (void)env
{
    NSLog(@"\n\n读取配置=====");
    NSLog(@"%@",_config?:@{});
    NSLog(@"\n\n================");
}

/** 取配置, json */
+ (void)loadConfig:(NSString *)file
{
    NSString* path = [[NSBundle mainBundle] pathForResource:file ofType:nil];
    NSData* data = [[NSFileManager defaultManager] contentsAtPath:path];
    
    NSError* error = nil;
    [AConfig setConfig:[NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error]];
    
    NSAssert1([AConfig config], @"%@", error);
}

@end
