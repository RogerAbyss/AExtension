//
//  ATouch+Extension.h
//  Pods
//
//  Created by abyss on 2017/8/16.
//
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "ATouchDelegate.h"

/**
 使用tap属性 开启点击回调
 */
@interface UIView (ATouch) <ATouchDelegate>
@end
@interface UIImageView (ATouch) <ATouchDelegate>
@end
@interface UIButton (ATouch) <ATouchDelegate>
@end
