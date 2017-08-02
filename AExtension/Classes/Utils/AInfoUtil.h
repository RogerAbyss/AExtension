//
//  AInfoUtil.h
//  Pods
//
//  Created by abyss on 2017/8/2.
//
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AInfoUtil : NSObject

/** 版本号 */
+ (NSString *)appVersion;
/** build号 */
+ (NSString *)appBuild;
/** app名称 */
+ (NSString *)appName;
/** app标识 */
+ (NSString *)appIdentifier;

/** 系统版本 */
+ (NSString *)appIphoneVersion;
/** 手机型号 */
+ (NSString *)appIphoneInfo;

@end

NS_ASSUME_NONNULL_END
