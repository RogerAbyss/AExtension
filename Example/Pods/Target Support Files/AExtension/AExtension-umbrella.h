#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "AExtension.h"
#import "NSString+Extension.h"
#import "UIBarButtonItem+Extension.h"
#import "UIImage+Extension.h"
#import "UIView+Extension.h"
#import "UIViewController+Extension.h"
#import "NSString+Strategy.h"
#import "UIButton+Strategy.h"
#import "UIImage+Strategy.h"
#import "UILabel+Strategy.h"
#import "UINavigationController+Strategy.h"
#import "UITableView+Wave.h"
#import "UITextField+Strategy.h"
#import "UITextView+PlaceHolder.h"

FOUNDATION_EXPORT double AExtensionVersionNumber;
FOUNDATION_EXPORT const unsigned char AExtensionVersionString[];

