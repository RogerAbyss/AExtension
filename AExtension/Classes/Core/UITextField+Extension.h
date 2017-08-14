//
//  UITextFeild+Extension.h
//  Pods
//
//  Created by abyss on 2017/8/14.
//
//

#import <Foundation/Foundation.h>

@interface UITextField (Extension)

/**
 英文,数字,汉字
 */
- (BOOL)onlyNormal;

/**
 英文,数字,汉字,空格
 */
- (BOOL)onlyNormalWithBlank;

/**
 英文,数字
 use Filtered: ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789
 */
- (BOOL)onlyPwd;

/**
 限制输入的字符
 请再delegate中调用过滤非法字符
 */
- (BOOL)only:(NSString *)patterns;

/**
 限制输入的字符 (过滤方式)
 请再delegate中调用过滤非法字符
 */
- (BOOL)onlyFiltered:(NSString *)Filtered;

@end
