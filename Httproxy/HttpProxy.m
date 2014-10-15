//
//  HttpProxy.m
//  Httproxy
//
//  Created by wangmeng on 14-10-15.
//  Copyright (c) 2014年 DM. All rights reserved.
//

#import "HttpProxy.h"

@implementation HttpProxy
+(NSString*)HttpPostUrl:(NSString *)url data:(NSString*)data {
    NSLog(@"post_begin");
    
    NSData* postData = [data dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];//数据转码;
    NSString *length = [NSString stringWithFormat:@"%ld", [data length]];
    
    NSMutableURLRequest* request = [[NSMutableURLRequest alloc]init];
    [request setURL:[NSURL URLWithString:url]]; //设置地址
    [request setHTTPMethod:@"POST"]; //设置发送方式
    [request setTimeoutInterval: 200]; //设置连接超时
    [request setValue:length forHTTPHeaderField:@"Content-Length"]; //设置数据长度
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"]; //设置发送数据的格式
    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"]; //设置预期接收数据的格式
    [request setHTTPBody:postData]; //设置编码后的数据
    
    //发起连接，接受响应
    NSHTTPURLResponse* urlResponse = nil;
    NSError *error = [[NSError alloc] init] ;
    NSData *responseData = [NSURLConnection sendSynchronousRequest:request
                                                 returningResponse:&urlResponse
                                                             error:&error];
    NSString *responseString = [[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding]; //返回数据，转码
    
    NSLog(responseString);
    NSLog(@"post_end");
    return responseString;
}
+(NSString*)HttpGetUrl:(NSString*)url data:(NSString *)data{
    NSLog(@"get_begin");
    NSData* postData = [data dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];//数据转码;
    NSString *length = [NSString stringWithFormat:@"%ld", [data length]];
    
    NSMutableURLRequest* request = [[NSMutableURLRequest alloc]init];
    [request setURL:[NSURL URLWithString:url]]; //设置地址
    [request setHTTPMethod:@"GET"]; //设置发送方式
    [request setTimeoutInterval: 200]; //设置连接超时
    [request setValue:length forHTTPHeaderField:@"Content-Length"]; //设置数据长度
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"]; //设置发送数据的格式
    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"]; //设置预期接收数据的格式
    [request setHTTPBody:postData]; //设置编码后的数据
    
    //发起连接，接受响应
    NSHTTPURLResponse* urlResponse = nil;
    NSError *error = [[NSError alloc] init] ;
    NSData *responseData = [NSURLConnection sendSynchronousRequest:request
                                                 returningResponse:&urlResponse
                                                             error:&error];
    NSString *responseString = [[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding]; //返回数据，转码
    
    NSLog(responseString);
    NSLog(@"get_end");
    return responseString;

}
@end
