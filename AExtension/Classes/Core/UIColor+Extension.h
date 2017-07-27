//
//  UIColor+Extension.h
//  Pods
//
//  Created by abyss on 2017/7/27.
//
//

#import <Foundation/Foundation.h>

@interface UIColor (Extension)

+ (UIColor *)colorWithHexString:(NSString *)hex;
+ (UIColor *)colorWithHexString:(NSString *)hex alpha:(CGFloat)alpha;

+ (UIColor *)colorWithRGB:(CGFloat)red Green:(CGFloat) green Blue:(CGFloat)blue alpha:(CGFloat)alpha;
+ (UIColor *)colorWithSame:(CGFloat)value;

@end
