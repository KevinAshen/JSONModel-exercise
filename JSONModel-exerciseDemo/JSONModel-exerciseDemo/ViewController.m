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
            
            NSLog(@"---test---%@----", [totalJSONModel.top_stories[0] imageStr]);
        }
    }];
    [testDataTask resume];

}


@end
