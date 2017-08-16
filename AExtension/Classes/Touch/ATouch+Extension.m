//
//  ATouch+Extension.m
//  Pods
//
//  Created by abyss on 2017/8/16.
//
//

#import "ATouch+Extension.h"
#import <objc/runtime.h>

@interface ATouchExtensionHelper : NSObject
+ (void)addTapGesture:(id)objct selector:(SEL)sel;
@end
@implementation ATouchExtensionHelper
+ (void)addTapGesture:(id)objct selector:(SEL)sel
{
    @try {
        [objct setUserInteractionEnabled:YES];
        
        UITapGestureRecognizer* tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:objct
                                                                                     action:sel];
        
        tapGesture.delegate = objct;
        tapGesture.numberOfTapsRequired = 1;
        tapGesture.numberOfTouchesRequired = 1;
        
        [objct addGestureRecognizer:tapGesture];
        
        for (UIGestureRecognizer* gesture in [objct gestureRecognizers])
        {
            if ([gesture isKindOfClass:[UITapGestureRecognizer class]]) {
                UITapGestureRecognizer* tap = (UITapGestureRecognizer*) gesture;
                if (tap.numberOfTouchesRequired == 1 && tap.numberOfTapsRequired == 1) {
                    [tap requireGestureRecognizerToFail:tapGesture];
                }
            }
        }
    } @catch (NSException *exception) {
        NSLog(@"\n[ATouchExtension]:\n%@",exception);
    } @finally {
        
    }
}
@end


@interface UIView () <UIGestureRecognizerDelegate>
@end
@implementation UIView (ATouch)

- (void)setTap:(ATouchBlock)tap
{
    [ATouchExtensionHelper addTapGesture:self selector:@selector(tapped)];
    objc_setAssociatedObject(self, @selector(tap), tap, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (ATouchBlock)tap
{
    return objc_getAssociatedObject(self, @selector(tap));
}

- (void)tapped
{
    if (self.tap)
        self.tap(self);
}

@end

@interface UIImageView () <UIGestureRecognizerDelegate>
@end
@implementation UIImageView (ATouch)

- (void)setTap:(ATouchBlock)tap
{
    [ATouchExtensionHelper addTapGesture:self selector:@selector(tapped)];
    objc_setAssociatedObject(self, @selector(tap), tap, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (ATouchBlock)tap
{
    return objc_getAssociatedObject(self, @selector(tap));
}

- (void)tapped
{
    if (self.tap)
        self.tap(self);
}

@end

@interface UIButton () <UIGestureRecognizerDelegate>
@end
@implementation UIButton (ATouch)

- (void)setTap:(ATouchBlock)tap
{
    [ATouchExtensionHelper addTapGesture:self selector:@selector(tapped)];
    objc_setAssociatedObject(self, @selector(tap), tap, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (ATouchBlock)tap
{
    return objc_getAssociatedObject(self, @selector(tap));
}

- (void)tapped
{
    if (self.tap)
        self.tap(self);
}

@end
