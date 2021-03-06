//
//  UINavigationBar+Extension.m
//  Pods
//
//  Created by abyss on 2017/8/12.
//
//

#import "UINavigationBar+Extension.h"
#import <objc/runtime.h>

@implementation UINavigationBar (Extension)
static char overlayKey;

- (UIView *)overlay
{
    return objc_getAssociatedObject(self, &overlayKey);
}

- (void)setOverlay:(UIView *)overlay
{
    objc_setAssociatedObject(self, &overlayKey, overlay, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)setUnderLineColor:(UIColor *)color
{
    if (!self.overlay)
    {
        UIImageView *shadowView = nil;
        
        NSArray *navigationBarSubviews = [self subviews];
        
        for (UIView *view in navigationBarSubviews)
        {
            NSString *viewName = NSStringFromClass([view class]);
            
            if ([viewName isEqualToString:@"_UINavigationBarBackground"] || [viewName isEqualToString:@"_UIBarBackground"])
            {
                shadowView = [view valueForKey:@"_shadowView"];
                
                if (shadowView == nil) {
                    return;
                }
                
                self.overlay = [[UIView alloc] initWithFrame:shadowView.frame];
                self.overlay.userInteractionEnabled = NO;
                self.overlay.translatesAutoresizingMaskIntoConstraints = NO;
                [view addSubview:self.overlay];
                
                [view addConstraints:@[
                                       
                                       [NSLayoutConstraint constraintWithItem:self.overlay
                                                                    attribute:NSLayoutAttributeTop
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:shadowView
                                                                    attribute:NSLayoutAttributeTop
                                                                   multiplier:1.0
                                                                     constant:0],
                                       
                                       [NSLayoutConstraint constraintWithItem:self.overlay
                                                                    attribute:NSLayoutAttributeBottom
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:shadowView
                                                                    attribute:NSLayoutAttributeBottom
                                                                   multiplier:1.0
                                                                     constant:0],
                                       
                                       [NSLayoutConstraint constraintWithItem:self.overlay
                                                                    attribute:NSLayoutAttributeLeft
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:shadowView
                                                                    attribute:NSLayoutAttributeLeft
                                                                   multiplier:1.0
                                                                     constant:0],
                                       
                                       [NSLayoutConstraint constraintWithItem:self.overlay
                                                                    attribute:NSLayoutAttributeRight
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:shadowView
                                                                    attribute:NSLayoutAttributeRight
                                                                   multiplier:1
                                                                     constant:0],
                                       ]];
                
                break;
            }
            
            if (shadowView) {
                break;
            }
        }
    }
    
    if (self.overlay) {
        self.overlay.backgroundColor = color;
    }
}

- (void)reset
{
    [self.overlay removeFromSuperview];
    self.overlay = nil;
}
@end
