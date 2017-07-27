//
//  UIBarButtonItem+Extension.h
//  AExtension
//
//  Created by abyss on 2017/7/11.
//  Copyright © 2017年 RogerAbyss. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIBarButtonItem (Extension)

/** 文字颜色 */
@property (nonatomic, strong) UIColor* color UI_APPEARANCE_SELECTOR;
/** 文字特殊颜色,特殊字用*text* */
@property (nonatomic, strong) UIColor* specialColor UI_APPEARANCE_SELECTOR;

// image/highlightedImage 支持图片名字/普通文字/特殊文字
+ (instancetype)buttonWithImage:(NSString *)image
               highlightedImage:(NSString * __nullable)highlightedImage
                         target:(id)target
                         action:(SEL)action;

@end

UIKIT_EXTERN CGFloat rDefualtExtensionUIBarButtonItemFont;

NS_ASSUME_NONNULL_END
