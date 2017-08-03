//
//  AFileUtil.h
//  Pods
//
//  Created by abyss on 2017/8/2.
//
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AFileUtil : NSObject

// 缓存文件路径
+ (NSString *)path;

// 写文件
+ (BOOL)fileWrite:(NSData *)data name:(NSString *)fileName;

// 读文件
+ (NSData *)fileRead:(NSString *)fileName;

/** Config
 */

// 缓存文件路径config.json
+ (NSString *)configPath;
// 下载config.json 时候 取URL
+ (NSURL *)configDownloadURL;

@end

NS_ASSUME_NONNULL_END
