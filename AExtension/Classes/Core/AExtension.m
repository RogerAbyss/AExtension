//
//  AExtension.m
//  Pods
//
//  Created by abyss on 2017/7/12.
//
//

#import "AExtension.h"

CGSize kScreen()
{
    return [UIScreen mainScreen].bounds.size;
}

@implementation AExtension

+ (BOOL)selfChecking
{
    NSString* a1 = @"\n======================================\n AExtension \n======================================\n";
    NSString* a2 = @"\n 自检完成..\n";
    
    NSLog(@"%@%@",a1,a2);
    
    NSLog(@"\n Core提供核心策略类\n你可能需要从字段修改这些配置\nrDefualtExtensionUIBarButtonItemFont\nrDefualtExtensionUIViewControllerBackIcon\n你可能需要从UIAppearance修改这些配置\nUIBarButtonItem.color/specialColor\n\n\n Crush提供Crush急救\n请谨慎使用!不再Crush并不代表你的代码正确了,可以仅仅使用Core以免造成调试困难\n\n Utils提供一些工具类\n CommonCrypto提供系统加密类\n======================================\n AExtension \n======================================\n");
    
    return YES;
}

@end
