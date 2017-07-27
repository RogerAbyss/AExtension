//
//  AAddressWrapper.m
//  AExtension
//
//  Created by abyss on 2017/7/27.
//  Copyright © 2017年 RogerAbyss. All rights reserved.
//

#import "AAddressWrapper.h"

@interface AAddressWrapper ()
{
    BOOL needRefresh;
    BOOL errorMap;
}
@property (nonatomic, strong) NSDictionary* mapAddress;
@end

@implementation AAddressWrapper

- (void)setMap:(CLLocation *)map
{
    _map = map;
    
    needRefresh = YES;
    
    [self mapAddress];
}

- (NSDictionary *)mapAddress
{
    NSDictionary* temp = @{@"country":@"",
                           @"province":@"",
                           @"city":@"",
                           @"district":@"",
                           @"address":@""};
    if (!_map) {
        return temp;
    }
    
    
    
    
    if (needRefresh || !_map)
    {
        CLGeocoder *geocoder = [[CLGeocoder alloc] init];
        
        [geocoder reverseGeocodeLocation:_map completionHandler:^(NSArray *placemarks, NSError *error)
         {
             needRefresh = NO;
             
             if (error)
             {
                 errorMap = YES;
                 
                 return;
             }
             else if(placemarks.count > 0)
             {
                 errorMap = NO;
                 
                 CLPlacemark* place = placemarks[0];
                 
                 _mapAddress = @{@"country":place.country?:@"",
                                 @"province":place.administrativeArea?:@"",
                                 @"city":place.locality?:@"",
                                 @"district":place.subLocality?:@"",
                                 @"address":place.name?:@""};
                 
                 __block AAddressWrapper* weak = self;
                 if (_reserveAddress) {
                     _reserveAddress(weak);
                 }
             }
         }];
    }
    
    
    return _mapAddress;
}

- (NSString *)description
{
    return @{@"Country":self.country?:@"",
             @"Province":self.province?:@"",
             @"City":self.city?:@"",
             @"District":self.district?:@"",
             @"Address":self.address?:@""}.description;
}

- (NSString *)country
{
    return (_country&&_country.length>0)?_country:self.mapAddress[@"country"];
}

- (NSString *)province
{
    return  (_province&&_province.length>0)?_province:self.mapAddress[@"province"];
}

- (NSString *)city
{
    return (_city&&_city.length>0)?_city:self.mapAddress[@"city"];
}

- (NSString *)district
{
    return (_district&&_district.length>0)?_district:self.mapAddress[@"district"];
}

- (NSString *)address
{
    return (_address&&_address.length>0)?_address:self.mapAddress[@"address"];
}

+ (AAddressWrapper *)wrapperFromAdress:(NSString *)address
{
    AAddressWrapper* wrapper = [[AAddressWrapper alloc] init];
    
    wrapper.address = address;
    
    return wrapper;
}

+ (AAddressWrapper *)wrapperFrom:(CLLocation *)map
{
    AAddressWrapper* wrapper = [[AAddressWrapper alloc] init];
    
    wrapper.map = map;
    
    return wrapper;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:[self map]          forKey:@"map"];
    [aCoder encodeObject:[self country]      forKey:@"country"];
    [aCoder encodeObject:[self province]     forKey:@"province"];
    [aCoder encodeObject:[self city]         forKey:@"city"];
    [aCoder encodeObject:[self district]     forKey:@"district"];
    [aCoder encodeObject:[self address]      forKey:@"address"];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self != nil)
    {
        _map = [aDecoder decodeObjectForKey:@"map"];
        
        self.country  = [aDecoder decodeObjectForKey:@"country"];
        self.province = [aDecoder decodeObjectForKey:@"province"];
        self.city     = [aDecoder decodeObjectForKey:@"city"];
        self.district = [aDecoder decodeObjectForKey:@"district"];
        self.address  = [aDecoder decodeObjectForKey:@"address"];
    }
    
    return self;
}

@end
