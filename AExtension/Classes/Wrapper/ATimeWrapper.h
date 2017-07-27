//
//  ATimeWrapper.h
//  AExtension
//
//  Created by abyss on 2017/7/27.
//  Copyright © 2017年 RogerAbyss. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ATimeWrapper;
typedef void(^TimesChangeBlock)(ATimeWrapper *timeWrapper);

@interface ATimeWrapper : NSObject <NSCoding>

/** 时间,NSDate */
@property (nonatomic, strong, readonly) NSDate* date;

/** 时间,NSTimeInterval */
@property (nonatomic, assign, readonly) NSTimeInterval timeInterval;

/** 时间,NSString */
@property (nonatomic, strong, readonly) NSString* dateDescription;

/** 时间差值, EXP:1分钟以前 */
@property (nonatomic, strong, readonly) NSString* datePeriodDescription;

/** 参照物时间, 默认nil 影响datePeriodDescription, 进行中的时间=pDate 会自动停止 */
@property (nonatomic, strong) NSDate* pDate;

/** 保质期,0 不计算是否过期 */
@property (nonatomic, assign) NSTimeInterval timeout;

/** 时间格式, 默认nil/setDefaultFormatter */
@property (nonatomic, strong) NSDateFormatter* formatter;

+ (ATimeWrapper *)wrapperNow;
+ (ATimeWrapper *)wrapperFromString:(NSString *)string;

+ (ATimeWrapper *)wrapperFromDate:(NSDate *)date;
+ (ATimeWrapper *)wrapperFromDateString:(NSString *)dateString;
+ (ATimeWrapper *)wrapperFromTimeInterval:(NSTimeInterval)timeInterval;

+ (void)setDefaultFormatter:(NSDateFormatter *)formatter;

/** 时间改变回调 */
@property (nonatomic, strong) TimesChangeBlock timesChangeBlock;

/** 时间前进 */
- (void)startUp;

/** 时间倒推 */
- (void)startDown;

/** 时间停止 */
- (void)stop;

/** 使用过计时需要取消 */
- (void)cancel;

/** 是否过期 */
- (BOOL)isValidate;

@end

@interface NSDate (ATimeWrapper)

- (ATimeWrapper *)timeWrapper;

@end
