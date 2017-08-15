//
//  NSString+Extension.m
//  AExtension
//
//  Created by abyss on 2017/7/11.
//  Copyright © 2017年 RogerAbyss. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (AExtension)

- (NSString *)UTF8encoding
{
    return [self stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]?:@"";
}

- (NSString *)money
{
    return self.isNumbers?[NSString stringWithFormat:@"%.2f",self.doubleValue]:self;
}

- (BOOL)doRegEx:(NSString *)regex
{
    NSPredicate *pre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [pre evaluateWithObject:self];
}

- (BOOL)isNumbers
{
    return [self doRegEx:@"[0-9]+([.]{0}|[.]{1}[0-9]+)"];
}

- (BOOL)isPureNumbers
{
    return [self doRegEx:@"[0-9]*"];
}

- (CGFloat)widthInLabel:(UILabel *)label
{
    return [self widthFont:label.font height:label.bounds.size.height];
}

- (CGFloat)widthFont:(UIFont *)font height:(CGFloat)height
{
    NSDictionary *attrs = @{NSFontAttributeName:font};
    return  [self boundingRectWithSize:CGSizeMake(0, height) options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attrs context:nil].size.width;
}

- (CGFloat)heightInLabel:(UILabel *)label
{
    return [self heightFont:label.font width:label.bounds.size.width];
}

- (CGFloat)heightFont:(UIFont *)font width:(CGFloat)width
{
    NSDictionary *attrs = @{NSFontAttributeName:font};
    return  [self boundingRectWithSize:CGSizeMake(width, 0) options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attrs context:nil].size.height;
}

@end
