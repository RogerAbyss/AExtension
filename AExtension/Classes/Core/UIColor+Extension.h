//
//  UIColor+Extension.h
//  Pods
//
//  Created by abyss on 2017/7/27.
//
//

#import <Foundation/Foundation.h>

@interface UIColor (AExtension)

/** hex 取颜色,hex错误会返回nil */
+ (UIColor *)colorWithHexString:(NSString *)hex;
+ (UIColor *)colorWithHexString:(NSString *)hex alpha:(CGFloat)alpha;

+ (UIColor *)colorWithRGB:(CGFloat)red Green:(CGFloat) green Blue:(CGFloat)blue alpha:(CGFloat)alpha;
+ (UIColor *)colorWithSame:(CGFloat)value;

+ (UIColor *)topic;
+ (UIColor *)line;
+ (UIColor *)background;

+ (UIColor *)red;
+ (UIColor *)blue;
+ (UIColor *)green;
+ (UIColor *)yellow;

+ (UIColor *)text;
+ (UIColor *)description;
+ (UIColor *)tip;


@end
