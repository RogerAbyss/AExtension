//
//  AMDictionaryWrapper.h
//  AExtension
//
//  Created by abyss on 2017/7/27.
//  Copyright © 2017年 RogerAbyss. All rights reserved.
//

#import "ADictionaryWrapper.h"

@interface AMDictionaryWrapper : ADictionaryWrapper

/** 存一个 int 值 */
- (void)set:(NSString *)name int:(int)value;

/** 存一个 id 值 */
- (void)set:(NSString *)name value:(id)value;

/** 存一个 long 值 */
- (void)set:(NSString *)name long:(long)value;

/** 存一个 BOOL 值 */
- (void)set:(NSString *)name bool:(BOOL)value;

/** 存一个 float 值 */
- (void)set:(NSString *)name float:(float)value;

/** 存一个 double 值 */
- (void)set:(NSString *)name double:(double)value;

/** 存一个 NSString 值 */
- (void)set:(NSString *)name string:(NSString *)value;

@end

@interface NSDictionary (MutableWrapper)

- (AMDictionaryWrapper *)mwrapper;

@end
