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

/**
 unicode转中文
 
 @return 含有中文
 */
- (NSString *)unicode
{
    return self;
}


@end
