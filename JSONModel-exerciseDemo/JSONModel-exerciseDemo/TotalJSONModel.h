//
//  TotalJSONModel.h
//  JSONModel-exerciseDemo
//
//  Created by mac on 2018/10/19.
//  Copyright © 2018 姜凯文. All rights reserved.
//

#import "JSONModel.h"
#import "StoriesJSONModel.h"
#import "Top_storiesJSONModel.h"

NS_ASSUME_NONNULL_BEGIN

@protocol StoriesJSONModel
@end

@protocol Top_storiesJSONModel
@end

@interface TotalJSONModel : JSONModel

@property (nonatomic, strong) NSString *date;
@property (nonatomic, strong) NSArray <StoriesJSONModel> *stories;
@property (nonatomic, strong) NSArray <Top_storiesJSONModel> *top_stories;

@end

NS_ASSUME_NONNULL_END
