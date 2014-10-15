//
//  main.m
//  Httproxy
//
//  Created by wangmeng on 14-10-15.
//  Copyright (c) 2014年 DM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HttpProxy.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        [HttpProxy HttpPostUrl:@"http://127.0.0.1:8080/v1/object" data:nil];
        [HttpProxy HttpGetUrl:@"http://127.0.0.1:8080/v1/user" data:nil];
    }
    return 0;
}
