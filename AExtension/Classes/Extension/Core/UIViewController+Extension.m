//
//  UIViewController+Extension.m
//  AExtension
//
//  Created by abyss on 2017/7/11.
//  Copyright © 2017年 RogerAbyss. All rights reserved.
//

#import "UIViewController+Extension.h"
#import "UIBarButtonItem+Extension.h"

NSString* rDefualtExtensionUIViewControllerBackIcon = @"common_arrow_left";

@implementation UIViewController (Extension)

- (void)initNav:(NSString *)title
{
    [self setupTitle:title];
    
    if (self.navigationController.viewControllers.count > 1)
    {
        [self setupLeftButtonWithImage:rDefualtExtensionUIViewControllerBackIcon and:nil];
    }
}

- (void)setupTitle:(NSString *)title
{
    self.title = title;
}
- (void)setupLeftButton:(NSString *)str
{
    [self setupLeftButtonWithImage:str and:nil];
}
- (void)setupLeftButtonWithImage:(NSString *)image and:(NSString * __nullable)highlightImage
{
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem buttonWithImage:image highlightedImage:highlightImage target:self action:@selector(left:)];
}
- (void)setupRightButton:(NSString *)str
{
    [self setupRightButtonWithImage:str and:nil];
}
- (void)setupRightButtonWithImage:(NSString *)image and:(NSString * __nullable)highlightImage
{
    UIBarButtonItem* item = [UIBarButtonItem buttonWithImage:image highlightedImage:highlightImage target:self action:@selector(right:)];
    
    [self listRightItems:@[item]];
}

- (void)listRightItems:(NSArray<UIBarButtonItem *> *)items
{
    UIBarButtonItem* item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    
    item.width = - 15;
    
    NSMutableArray* list = [NSMutableArray arrayWithArray:@[item]];
    
    [list addObjectsFromArray:items];
    
    self.navigationItem.rightBarButtonItems = list;
}

- (void)left:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)right:(id)sender
{
    NSLog(@"Please Cover Me");
}


@end
