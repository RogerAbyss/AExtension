//
//  AAddressWrapper.h
//  AExtension
//
//  Created by abyss on 2017/7/27.
//  Copyright © 2017年 RogerAbyss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@class AAddressWrapper;
typedef void(^AddressChangeBlock)(AAddressWrapper *place);

@interface AAddressWrapper : NSObject <NSCoding>

/** 坐标等信息 */
@property (nonatomic, strong) CLLocation* map;
/** 用户附加的地址详情 或者地址概要 */
@property (nonatomic, copy) NSString* address;


@property (nonatomic, copy) NSString* country;
@property (nonatomic, copy) NSString* province;
@property (nonatomic, copy) NSString* city;
@property (nonatomic, copy) NSString* district;


/**
 *  异步地址
 *  当仅使用坐标时,会用GEO请求地址,这时属性不会立刻得到。
 */
@property (nonatomic, copy) AddressChangeBlock reserveAddress;

+ (AAddressWrapper *)wrapperFromAdress:(NSString *)address;

+ (AAddressWrapper *)wrapperFrom:(CLLocation *)map;

@end
