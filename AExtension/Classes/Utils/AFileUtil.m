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
    NSString* path = [[NSHomeDirectory() stringByAppendingPathComponent:filePath] stringByAppendingString:[AInfoUtil appVersion]];
    
    NSFileManager* manager = [NSFileManager defaultManager];
    
    if(![manager fileExistsAtPath:path])
    {
        [manager createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:nil];
    }
    
    return path;
}

+ (NSString *)configPath
{
    return [[AFileUtil path] stringByAppendingPathComponent:@"config.json"];
}

+ (NSURL *)configDownloadURL
{
    NSString* URL = [AFileUtil configPath];
    
    NSFileManager* manager = [NSFileManager defaultManager];
    
    if ([manager fileExistsAtPath:filePath]) {
        BOOL success = [manager removeItemAtPath:filePath error:nil];
        
        NSLog(@"%@",success?@"删除原文件成功":@"删除原文件失败");
    }
    
    return [NSURL fileURLWithPath:URL];
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
