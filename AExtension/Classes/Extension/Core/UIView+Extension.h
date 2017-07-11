//
//  UIView+Extension.h
//  AExtension
//
//  Created by abyss on 2017/7/11.
//  Copyright © 2017年 RogerAbyss. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Extension)

@property CGSize size;

@property CGPoint origin;

@property CGFloat width;
@property CGFloat height;

@property CGFloat top;
@property CGFloat left;
@property CGFloat right;
@property CGFloat bottom;

@property CGFloat x;
@property CGFloat y;
@property CGFloat w;
@property CGFloat h;

- (void)setRoundCorner;
- (void)setRoundCornerAll;

- (void)setBorderWithColor:(UIColor *)color;

- (void)setAnimateRotationWith:(CGFloat)rate;

- (void)centerToParent;

- (void)addSubviews:(UIView *)view,...NS_REQUIRES_NIL_TERMINATION;
- (void)removeAllSubviews;

- (BOOL)containsSubView:(UIView *)subView;
- (BOOL)containsSubViewOfClassType:(Class)anyClass;

@end

UIKIT_EXTERN CGFloat rDefualtExtensionUIViewCornerRadius;

NS_ASSUME_NONNULL_END
