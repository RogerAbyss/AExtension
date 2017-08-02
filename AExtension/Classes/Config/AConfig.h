//
//  AConfig.h
//  Pods
//
//  Created by abyss on 2017/7/27.
//
//

#import <Foundation/Foundation.h>

/** 尽量用宏使用config */
#define APP_CONFIG [AConfig config]

@interface AConfig : NSObject

/** 配置文件 */
+ (NSDictionary *)config;

/** 网络配置文件版本号 */
+ (NSString *)netVersion;

/** 取配置, json
 
 全局大量使用配置
 务必在第一时间调用
 */
+ (void)loadConfig:(NSString *)file;

/** 取配置, Data */
+ (void)loadConfigData:(NSData *)data;

/**
 查看环境
 */
+ (void)env;

@end

