//
//  AExtension.h
//  Pods
//
//  Created by abyss on 2017/7/11.
//
//

#ifndef AExtension_h
#define AExtension_h

#import "UIView+Extension.h"
#import "NSString+Extension.h"
#import "UIImage+Extension.h"
#import "UIFont+Extension.h"
#import "UIColor+Extension.h"
#import "UIButton+Extension.h"
#import "UITextField+Extension.h"
#import "UILabel+Extension.h"

#endif /* AExtension_h */

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

CGSize kScreen();

@interface AExtension : NSObject

+ (BOOL)selfChecking;

@end

NS_ASSUME_NONNULL_END
