//
//  UILabel+Extension.m
//  Pods
//
//  Created by abyss on 2017/8/15.
//
//

#import "UILabel+Extension.h"
#import "NSString+Extension.h"

@implementation UILabel (Extension)

- (CGFloat)widthDynamic
{
    return [self.text widthInLabel:self];
}

- (CGFloat)heightDynamic
{
    return [self.text heightInLabel:self];
}

@end
