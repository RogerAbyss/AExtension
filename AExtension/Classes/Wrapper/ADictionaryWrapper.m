//
//  ADictionWrapper.m
//  AExtension
//
//  Created by abyss on 2017/7/27.
//  Copyright © 2017年 RogerAbyss. All rights reserved.
//

#import "ADictionaryWrapper.h"
#import "AConvertUtil.h"

@implementation ADictionaryWrapper

- (instancetype)initWith:(NSDictionary *)dictionary
{
    if(!(self = [super init]))
    {
        return nil;
    }
    
    self.dictionary = dictionary;
    
    return self;
}

+ (instancetype)wrapperFromDictionary:(NSDictionary *)dictionary
{
    if(!dictionary)
    {
        dictionary = @{};
    }
    
    return [[self alloc] initWith:dictionary];
}

#pragma mark - Getter

- (id)get:(NSString *)name
{
    if(!self.dictionary)
    {
        return nil;
    }
    
    NSArray* components = [name componentsSeparatedByString:@"."];
    
    NSDictionary* object = self.dictionary;
    id value = nil;
    
    for(NSString* key in components)
    {
        if([object isKindOfClass:[ADictionaryWrapper class]])
        {
            value = [(ADictionaryWrapper*)object get:key];
        }
        else if([object isKindOfClass:[NSDictionary class]])
        {
            value  = [object objectForKey:key];
        }
        else
        {
            value = nil;
        }
        
        object = value;
    }
    
    return value;
}

- (NSString *)getString:(NSString *)name
{
    return [AConvertUtil object:[self get:name] to:[NSString class]]?[AConvertUtil object:[self get:name] to:[NSString class]]:@"";
}

- (ADictionaryWrapper *)getDictionaryWrapper:(NSString *)name
{
    id ret = [self get:name];
    
    if([ret isKindOfClass:[ADictionaryWrapper class]])
    {
        
    }
    else
    {
        ret = [ADictionaryWrapper wrapperFromDictionary:[AConvertUtil object:ret to:[NSDictionary class]]];
    }
    
    return ret?ret:@{}.wrapper;
}

- (NSDictionary *)getDictionary:(NSString *)name
{
    id ret = [self get:name];
    
    if([ret isKindOfClass:[ADictionaryWrapper class]])
    {
        ret = ((ADictionaryWrapper*)ret).dictionary;
    }
    else
    {
        ret = [AConvertUtil object:ret to:[NSDictionary class]];
    }
    
    return ret?ret:@{};
}

- (NSArray *)getArray:(NSString *)name
{
    return [AConvertUtil object:[self get:name] to:[NSArray class]]?[AConvertUtil object:[self get:name] to:[NSArray class]]:@[];
}

- (NSInteger)getInteger:(NSString *)name
{
    return [AConvertUtil objectToInteger:[self get:name]];
}

- (double) getDouble:(NSString*)name
{
    return [AConvertUtil objectToDouble:[self get:name]];
}

- (float) getFloat:(NSString*)name
{
    return [AConvertUtil objectToFloat:[self get:name]];
}

- (int) getInt:(NSString*)name
{
    return [AConvertUtil objectToInt:[self get:name]]?[AConvertUtil objectToInt:[self get:name]]:0;
}

- (long) getLong:(NSString*)name
{
    return [AConvertUtil objectToLong:[self get:name]];
}

- (BOOL) getBool:(NSString*)name
{
    return [AConvertUtil objectToBool:[self get:name]];
}

- (NSString*)description
{
    return [NSString stringWithFormat:@"CRDictionaryWrapper\n%@", [self.dictionary description]];
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:[self dictionary] forKey:@"dictionary"];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self != nil)
    {
        self.dictionary = [aDecoder decodeObjectForKey:@"dictionary"];
    }
    
    return self;
}

@end

@implementation NSDictionary (Wrapper)

- (ADictionaryWrapper*) wrapper
{
    return [ADictionaryWrapper wrapperFromDictionary:self];
}

@end
