//
//  AUnicodeUtil.m
//  Pods
//
//  Created by abyss on 2017/7/28.
//
//

#import "AUnicodeUtil.h"
#import <objc/runtime.h>

@implementation AUnicodeUtil

+ (NSString *)stringByReplaceUnicode:(NSString *)unicodeString
{
    NSMutableString *convertedString = [unicodeString mutableCopy];
    
    [convertedString replaceOccurrencesOfString:@"\\U"
                                     withString:@"\\u"
                                        options:0
                                          range:NSMakeRange(0, convertedString.length)];
    
    CFStringRef transform = CFSTR("Any-Hex/Java");
    CFStringTransform((__bridge CFMutableStringRef)convertedString, NULL, transform, YES);
    
    return convertedString;
}

@end

@interface NSString (AUnicodeUtil)
@end

@implementation NSString (AUnicodeUtil)
#if DEBUG
+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Method originalMethod = class_getInstanceMethod([self class], @selector(descriptionWithLocale:indent:));
    
        Method exchangeMethod = class_getInstanceMethod([self class], @selector(rc_descriptionWithLocale:indent:));
    
        /** 交换方法 */
        method_exchangeImplementations(originalMethod, exchangeMethod);
    });
}

- (NSString *)rc_descriptionWithLocale:(id)locale indent:(NSUInteger)level
{
    return [AUnicodeUtil stringByReplaceUnicode:[self rc_descriptionWithLocale:locale indent:level]];
}
#endif
@end

@interface NSArray (AUnicodeUtil)
@end

@implementation NSArray (AUnicodeUtil)
#if DEBUG
+ (void)load
{
    Method originalMethod = class_getInstanceMethod([self class], @selector(descriptionWithLocale:indent:));
    
    Method exchangeMethod = class_getInstanceMethod([self class], @selector(rc_descriptionWithLocale:indent:));
    
    /** 交换方法 */
    method_exchangeImplementations(originalMethod, exchangeMethod);
}

- (NSString *)rc_descriptionWithLocale:(id)locale indent:(NSUInteger)level
{
    return [AUnicodeUtil stringByReplaceUnicode:[self rc_descriptionWithLocale:locale indent:level]];
}
#endif
@end

@interface NSDictionary (AUnicodeUtil)
@end

@implementation NSDictionary (AUnicodeUtil)
#if DEBUG
+ (void)load
{
    Method originalMethod = class_getInstanceMethod([self class], @selector(descriptionWithLocale:indent:));
    
    Method exchangeMethod = class_getInstanceMethod([self class], @selector(rc_descriptionWithLocale:indent:));
    
    /** 交换方法 */
    method_exchangeImplementations(originalMethod, exchangeMethod);
}

- (NSString *)rc_descriptionWithLocale:(id)locale indent:(NSUInteger)level
{
    return [AUnicodeUtil stringByReplaceUnicode:[self rc_descriptionWithLocale:locale indent:level]];
}
#endif
@end
