//
//  AFileUtil.m
//  Pods
//
//  Created by abyss on 2017/8/2.
//
//

#import "AFileUtil.h"
#import "AInfoUtil.h"

NSString* filePath = @"AFile";

@implementation AFileUtil

+ (NSString *)path
{
    return [[NSHomeDirectory() stringByAppendingPathComponent:filePath] stringByAppendingString:[AInfoUtil appVersion]];
}

+ (NSString *)fullPathWithName:(NSString *)fileName
{
    return [[AFileUtil path] stringByAppendingPathComponent:fileName];
}

+ (BOOL)fileWrite:(NSData *)data name:(NSString *)fileName
{
    return [data writeToFile:[AFileUtil fullPathWithName:fileName] atomically:NO];
}

+ (NSData *)fileRead:(NSString *)fileName
{
    NSData* data = [NSData dataWithContentsOfFile:[AFileUtil fullPathWithName:fileName]];
    
    return data;
}

@end
