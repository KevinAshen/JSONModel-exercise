//
//  Top_storiesJSONModel.h
//  JSONModel-exerciseDemo
//
//  Created by mac on 2018/10/19.
//  Copyright © 2018 姜凯文. All rights reserved.
//

#import "JSONModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface Top_storiesJSONModel : JSONModel

@property (nonatomic, strong) NSString *images;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *id;
@property (nonatomic, strong) NSString *ga_prefix;
@property (nonatomic, strong) NSString *title;

@end

NS_ASSUME_NONNULL_END
