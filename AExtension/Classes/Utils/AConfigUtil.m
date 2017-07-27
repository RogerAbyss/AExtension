//
//  AConfigUtil.m
//  Pods
//
//  Created by abyss on 2017/7/27.
//
//

#import "AConfigUtil.h"

static NSDictionary* config = nil;
@implementation AConfigUtil

/** 配置文件 */
+ (NSDictionary *)config
{
    return config?:@{};
}

/** 取配置, json */
+ (void)loadConfig:(NSString *)file
{
    NSString* path = [[NSBundle mainBundle] pathForResource:file ofType:nil];
    NSData* data = [[NSFileManager defaultManager] contentsAtPath:path];
    
    NSError* error = nil;
    config = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    
    NSAssert1(config, @"%@", error);
}

@end
