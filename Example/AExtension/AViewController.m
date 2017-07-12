//
//  AViewController.m
//  AExtension
//
//  Created by RogerAbyss on 07/11/2017.
//  Copyright (c) 2017 RogerAbyss. All rights reserved.
//

#import "AViewController.h"
#import <AExtension/AExtension.h>

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString* s = @"1.00a";
    NSLog(@"%@",[s doRegEx:@"[0-9]+([.]{0}|[.]{1}[0-9]+)"]?@"是":@"否");
    
    rDefualtExtensionUIViewControllerBackIcon = @"test";
    
    [self initNav:@"哈哈"];
    [self setupRightButton:@"test"];
    
    NSLog(@"%@",@"100".money);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
