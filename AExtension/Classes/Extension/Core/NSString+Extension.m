//
//  NSString+Extension.m
//  AExtension
//
//  Created by abyss on 2017/7/11.
//  Copyright © 2017年 RogerAbyss. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)

- (NSString *)UTF8encoding
{
    return [self stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]?:@"";
}

- (NSString *)money
{
    return self.isNumbers?[NSString stringWithFormat:@"%.2lu",(unsigned long)self]:self;
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

@end
