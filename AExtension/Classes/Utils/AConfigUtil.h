//
//  AConfigUtil.h
//  Pods
//
//  Created by abyss on 2017/7/27.
//
//

#import <Foundation/Foundation.h>

@interface AConfigUtil : NSObject

/** 取配置, json */
+ (void)loadConfig:(NSString *)file;

@end
