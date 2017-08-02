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

// 写文件
+ (BOOL)fileWrite:(NSData *)data name:(NSString *)fileName;

// 读文件
+ (NSData *)fileRead:(NSString *)fileName;

@end

NS_ASSUME_NONNULL_END
