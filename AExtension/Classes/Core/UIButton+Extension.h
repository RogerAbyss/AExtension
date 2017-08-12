//
//  UIButton+Extension.h
//  AModule
//
//  Created by abyss on 2017/8/12.
//  Copyright © 2017年 RogerAbyss. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, TQEasyIconDirection)
{
    TQEasyIconInUnknown = 0,
    TQEasyIconInLeft,
    TQEasyIconInRight,
    TQEasyIconInTop,
    TQEasyIconInBottom,
};

@interface TQEasyIconInfo : NSObject

@property (nonatomic,assign) TQEasyIconDirection iconDirection;
@property (nonatomic,assign) CGFloat iconWithTitleSpacing;

@end

@interface UIButton (Extension)

@property (nonatomic,strong,readonly) TQEasyIconInfo *iconInfo;

- (void)setIconInLeft;
- (void)setIconInRight;
- (void)setIconInTop;
- (void)setIconInBottom;

- (void)setIconInLeftWithSpacing:(CGFloat)Spacing;
- (void)setIconInRightWithSpacing:(CGFloat)Spacing;
- (void)setIconInTopWithSpacing:(CGFloat)Spacing;
- (void)setIconInBottomWithSpacing:(CGFloat)Spacing;

@end
