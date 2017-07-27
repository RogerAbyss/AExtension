//
//  UIFont+Extension.m
//  Pods
//
//  Created by abyss on 2017/7/27.
//
//

#import "UIFont+Extension.h"
#import "AConfigUtil.h"

@implementation UIFont (AExtension)

+ (UIFont *)fontAt:(CGFloat)size
{
    return [UIFont systemFontOfSize:size];
}

+ (UIFont *)fontBig
{
    return [UIFont fontAt:[[[AConfigUtil config] objectForKey:@"Font.text.big"] integerValue]];
}

+ (UIFont *)fontMiddle
{
    return [UIFont fontAt:[[[AConfigUtil config] objectForKey:@"Font.text.middle"] integerValue]];
}

+ (UIFont *)fontSmall
{
    return [UIFont fontAt:[[[AConfigUtil config] objectForKey:@"Font.text.small"] integerValue]];
}

+ (UIFont *)fontMini
{
    return [UIFont fontAt:[[[AConfigUtil config] objectForKey:@"Font.text.Mini"] integerValue]];
}

@end
