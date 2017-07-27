//
//  NSString+Extension.h
//  AExtension
//
//  Created by abyss on 2017/7/11.
//  Copyright © 2017年 RogerAbyss. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (AExtension)

/**
 钱的表达,如果字符串返回不是数字,则返回原样

 @return 钱(两位小数)
 */
- (NSString *)money;

/**
 做UTF8encoding

 @return UTFencoding字符串
 */
- (NSString *)UTF8encoding;

/**
 是否是数字(包括.)

 @return 是否是数字
 */
- (BOOL)isNumbers;

/**
 是否是纯数字
 
 @return 是否是纯数字
 */
- (BOOL)isPureNumbers;

/**
 是否满足正则式Match

 @param regex 正则表达式
 @return 是否满足
 */
- (BOOL)doRegEx:(NSString *)regex;

@end

NS_ASSUME_NONNULL_END
