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
    return [UIFont fontAt:[APP_CONFIG.wrapper getInteger:@"Font.text.big"]>0?:16];
}

+ (UIFont *)fontMiddle
{
    return [UIFont fontAt:[APP_CONFIG.wrapper getInteger:@"Font.text.middle"]>0?:14];
}

+ (UIFont *)fontSmall
{
    return [UIFont fontAt:[APP_CONFIG.wrapper getInteger:@"Font.text.small"]>0?:12];
}

+ (UIFont *)fontMini
{
    return [UIFont fontAt:[APP_CONFIG.wrapper getInteger:@"Font.text.Mini"]>0?:10];
}

@end
