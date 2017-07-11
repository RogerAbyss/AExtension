//
//  UIBarButtonItem+Extension.m
//  AExtension
//
//  Created by abyss on 2017/7/11.
//  Copyright © 2017年 RogerAbyss. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"
#import <UIKit/UIKit.h>

CGFloat rDefualtExtensionUIBarButtonItemFont = 12;

@implementation UIBarButtonItem (Extension)

- (UIColor *)color
{
    return self.color;
}

- (void)setColor:(UIColor *)color
{
    self.color = color;
}

- (UIColor *)specialColor
{
    return self.specialColor;
}

- (void)setSpecialColor:(UIColor *)specialColor
{
    self.specialColor = specialColor;
}

+ (instancetype)buttonWithImage:(NSString *)image highlightedImage:(NSString *)highlightedImage target:(id)target action:(SEL)action
{
    UIColor* normal  = [UIBarButtonItem appearance].color;
    UIColor* special = [UIBarButtonItem appearance].specialColor;
    
    UIButton *button = [[UIButton alloc] init];
    
    NSString* title         = nil;
    UIImage* normalImage    = nil;
    UIImage* highlightImage = nil;
    
    if (image)
        normalImage = [UIImage imageNamed:image];
    else
        title = @"NONAME";
    
    if (highlightImage)
        highlightImage = [UIImage imageNamed:highlightedImage];
    else title = @"NONAME";
    
    CGRect frame = button.frame;
    if (normalImage || highlightImage)
    {
        [button setBackgroundImage:normalImage forState:UIControlStateNormal];
        [button setBackgroundImage:highlightImage forState:UIControlStateHighlighted];
        [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
        
        frame.size = button.currentBackgroundImage.size;
        [button setFrame:frame];
        
        return [[self alloc] initWithCustomView:button];
    }
    else if (image || title)
    {
        button = nil;
        if (!title || [title isEqualToString:@"NONAME"]) title = image;
        
        UIBarButtonItem *ret = nil;
        
        if ([title hasPrefix:@"*"] && [title hasSuffix:@"*"])
        {
            title = [title stringByReplacingOccurrencesOfString:@"*" withString:@""];
            
            ret = [[UIBarButtonItem alloc] initWithTitle:title
                                                   style:UIBarButtonItemStylePlain
                                                  target:target
                                                  action:action];
            
            [ret setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:12],NSForegroundColorAttributeName:special?:[UIColor redColor]} forState:UIControlStateNormal];
        }
        else
        {
            ret = [[UIBarButtonItem alloc] initWithTitle:title style:UIBarButtonItemStylePlain target:target action:action];
            
            [ret setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:12],NSForegroundColorAttributeName:normal?:[UIColor blackColor]} forState:UIControlStateNormal];
        }
        
        return ret;
    }
    else
    {
        return nil;
    }
}

@end
