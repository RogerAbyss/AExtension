//
//  AViewController.m
//  AExtension
//
//  Created by RogerAbyss on 07/11/2017.
//  Copyright (c) 2017 RogerAbyss. All rights reserved.
//

#import "AViewController.h"
#import <AExtension/AExtension.h>
#import <AExtension/UIViewController+Extension.h>
#import <AExtension/ATouch+Extension.h>

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [AExtension selfChecking];
    
    NSString* s = @"1.00a";
    NSLog(@"%@",[s doRegEx:@"[0-9]+([.]{0}|[.]{1}[0-9]+)"]?@"是":@"否");
    
    [self initNav:@"哈哈"];
    [self setupRightButton:@"test"];
    
    NSLog(@"%@",@"100".money);
    
    NSLog(@"%@",@{@"ss":@"中文"});
    
//    [self.view tap:^(id sender) {
//        NSLog(@"点击");
//    }];
    
    self.view.tap = ^(id sender) {
        NSLog(@"111");
    };
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
