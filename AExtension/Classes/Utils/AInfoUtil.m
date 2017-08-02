//
//  AInfoUtil.m
//  Pods
//
//  Created by abyss on 2017/8/2.
//
//

#import "AInfoUtil.h"

@implementation AInfoUtil

/** 版本号 */
+ (NSString *)appVersion
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}

/** build号 */
+ (NSString *)appBuild
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
}

/** app名称 */
+ (NSString *)appName
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"];
}

/** app标识 */
+ (NSString *)appIdentifier
{
    return [[NSBundle mainBundle] bundleIdentifier];
}

/** 系统版本 */
+ (NSString *)appIphoneVersion
{
    return [[UIDevice currentDevice] systemVersion];
}

/** 手机型号 */
+ (NSString *)appIphoneInfo
{
    return [[UIDevice currentDevice] model];
}

@end
