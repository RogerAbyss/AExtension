//
//  UIViewController+Extension.h
//  AExtension
//
//  Created by abyss on 2017/7/11.
//  Copyright © 2017年 RogerAbyss. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// Defulat Action:
// left:(id)sender
// right:(id)sender
// arrowIcon: common_arrow_left
@interface UIViewController (AExtension)

- (void)initNav:(NSString *)title;

- (void)setupTitle:(NSString *)title;
- (void)setupLeftButton:(NSString *)str;
- (void)setupLeftButtonWithImage:(NSString *)image and:(NSString * __nullable)highlightImage;
- (void)setupRightButton:(NSString *)str;
- (void)setupRightButtonWithImage:(NSString *)image and:(NSString * __nullable)highlightImage;

// 自动排列
- (void)listRightItems:(NSArray<UIBarButtonItem *> *)items;

@end

UIKIT_EXTERN NSString* rDefualtExtensionUIViewControllerBackIcon;

NS_ASSUME_NONNULL_END
