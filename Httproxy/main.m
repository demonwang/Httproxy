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
        [HttpProxy HttpPostUrl:@"http://api.map.baidu.com/location/ip" data:@"ak=92495cecd866429a588038601fd512f5"];
        //[HttpProxy HttpGetUrl:@"http://api.map.baidu.com/location/ip" data:@"ak=92495cecd866429a588038601fd512f5"];
    }
    return 0;
}
