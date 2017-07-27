//
//  AConfigUtil.m
//  Pods
//
//  Created by abyss on 2017/7/27.
//
//

#import "AConfigUtil.h"
#import "AConfig.h"

@interface AConfig ()
+ (void)setConfig:(NSDictionary *)config;
@end
@implementation AConfigUtil

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
