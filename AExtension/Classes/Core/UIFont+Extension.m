//
//  UIFont+Extension.m
//  Pods
//
//  Created by abyss on 2017/7/27.
//
//

#import "UIFont+Extension.h"
#import "AConfig.h"
#import "ADictionaryWrapper.h"

@implementation UIFont (AExtension)

+ (UIFont *)fontAt:(CGFloat)size
{
    return [UIFont systemFontOfSize:size];
}

+ (UIFont *)fontBig
{
    return [UIFont fontAt:[[AConfig config].wrapper getInteger:@"Font.text.big"]];
}

+ (UIFont *)fontMiddle
{
    return [UIFont fontAt:[[AConfig config].wrapper getInteger:@"Font.text.middle"]];
}

+ (UIFont *)fontSmall
{
    return [UIFont fontAt:[[AConfig config].wrapper getInteger:@"Font.text.small"]];
}

+ (UIFont *)fontMini
{
    return [UIFont fontAt:[[AConfig config].wrapper getInteger:@"Font.text.Mini"]];
}

@end
