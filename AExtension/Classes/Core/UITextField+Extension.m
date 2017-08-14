//
//  UITextFeild+Extension.m
//  Pods
//
//  Created by abyss on 2017/8/14.
//
//

#import "UITextField+Extension.h"
#import "NSString+Extension.h"

#define KCharacterNumber @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

@implementation UITextField (Extension)

- (BOOL)onlyNormal
{
    if (!self.text || [self.text isEqualToString:@""]) {
        return NO;
    }
    
    return [self.text doRegEx:@"^[a-zA-Z\u4E00-\u9FA5\\d]*$"];
}

- (BOOL)onlyNormalWithBlank
{
    if (!self.text || [self.text isEqualToString:@""]) {
        return NO;
    }
    
    return [self.text doRegEx:@"^[a-zA-Z\u4E00-\u9FA5\\d\\s]*$"];
}

- (BOOL)onlyPwd
{
    if (!self.text || [self.text isEqualToString:@""]) {
        return NO;
    }
    
    NSCharacterSet *cs = [[NSCharacterSet characterSetWithCharactersInString:KCharacterNumber] invertedSet];
    NSString *filtered = [[self.text componentsSeparatedByCharactersInSet:cs] componentsJoinedByString:@""];
    BOOL canChange = [self.text isEqualToString:filtered];
    
    return canChange;
}

- (BOOL)only:(NSString *)patterns
{
    if (!self.text || [self.text isEqualToString:@""]) {
        return NO;
    }
    
    return [self.text doRegEx:patterns];
}

- (BOOL)onlyFiltered:(NSString *)Filtered
{
    if (!self.text || [self.text isEqualToString:@""]) {
        return NO;
    }
    
    NSCharacterSet *cs = [[NSCharacterSet characterSetWithCharactersInString:Filtered?:@""] invertedSet];
    NSString *filtered = [[self.text componentsSeparatedByCharactersInSet:cs] componentsJoinedByString:@""];
    BOOL canChange = [self.text isEqualToString:filtered];
    
    return canChange;
}

@end
