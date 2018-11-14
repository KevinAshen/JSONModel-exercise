//
//  Top_storiesJSONModel.m
//  JSONModel-exerciseDemo
//
//  Created by mac on 2018/10/19.
//  Copyright © 2018 姜凯文. All rights reserved.
//

#import "Top_storiesJSONModel.h"

@implementation StoriesJSONModel

+(BOOL)propertyIsOptional:(NSString *)propertyName{
    return  YES;
}

@end

@implementation Top_storiesJSONModel

+(BOOL)propertyIsOptional:(NSString *)propertyName{
    return  YES;
}

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"ID":@"id",
                                                                  @"imageStr":@"image"
                                                                  }];
}
@end

@implementation TotalJSONModel

+(BOOL)propertyIsOptional:(NSString *)propertyName{
    return  YES;
}

@end
