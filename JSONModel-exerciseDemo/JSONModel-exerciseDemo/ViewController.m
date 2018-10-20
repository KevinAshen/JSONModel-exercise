//
//  ViewController.m
//  JSONModel-exerciseDemo
//
//  Created by mac on 2018/10/19.
//  Copyright © 2018 姜凯文. All rights reserved.
//

#import "ViewController.h"
#import "Top_storiesJSONModel.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSString *testUrlStr = [NSString stringWithFormat:@"https://news-at.zhihu.com/api/4/news/latest"];
    testUrlStr = [testUrlStr stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    NSURL *testUrl = [NSURL URLWithString:testUrlStr];
    NSURLRequest *testRequest = [NSURLRequest requestWithURL:testUrl];
    NSURLSession *testSession = [NSURLSession sharedSession];
    NSURLSessionDataTask *testDataTask = [testSession dataTaskWithRequest:testRequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error == nil) {
            NSDictionary *obj = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
            NSLog(@"x--%@---", obj);
            TotalJSONModel *totalJSONModel = [[TotalJSONModel alloc] initWithDictionary:obj error:nil];
            NSMutableArray *JSONModelMut = [[NSMutableArray alloc] init];
            for (int i = 0; i < totalJSONModel.stories.count; i++) {
                StoriesJSONModel *storiesJSONModel = [[StoriesJSONModel alloc] initWithDictionary:obj[@"stories"][i] error:nil];
                [JSONModelMut addObject:storiesJSONModel];
            }
            NSLog(@"%ld", JSONModelMut.count);
            for  (StoriesJSONModel *storiesJSONModel in JSONModelMut) {
                NSLog(@"---%@---", storiesJSONModel.title);
            }
//            self.totalJSONModel = [[TotalJSONModel alloc] initWithDictionary:obj error:nil];
//            NSLog(@"66---%@---", self.totalJSONModel);
        }
//        dispatch_async(dispatch_get_main_queue(), ^{
//            NSLog(@"2---%@---", [self.totalJSONModel.stories[0] valueForKey:@"images"][0]);
//        });
    }];
    [testDataTask resume];

}


@end
