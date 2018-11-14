//
//  Top_storiesJSONModel.h
//  JSONModel-exerciseDemo
//
//  Created by mac on 2018/10/19.
//  Copyright © 2018 姜凯文. All rights reserved.
//

#import "JSONModel.h"

@protocol Top_storiesJSONModel

@end

@protocol StoriesJSONModel

@end

NS_ASSUME_NONNULL_BEGIN

@interface Top_storiesJSONModel : JSONModel

@property (nonatomic, copy) NSString *imageStr;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *ID;
@property (nonatomic, copy) NSString *ga_prefix;
@property (nonatomic, copy) NSString *title;

@end

@interface StoriesJSONModel : JSONModel

@property (nonatomic, copy) NSArray *images;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *id;
@property (nonatomic, copy) NSString *ga_prefix;
@property (nonatomic, copy) NSString *title;

@end

@interface TotalJSONModel : JSONModel

@property (nonatomic, copy) NSString *date;
@property (nonatomic, copy) NSArray<Top_storiesJSONModel>*top_stories;
@property (nonatomic, copy) NSArray<StoriesJSONModel>*stories;


@end
NS_ASSUME_NONNULL_END
