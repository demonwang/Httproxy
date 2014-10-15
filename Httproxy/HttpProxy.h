//
//  HttpProxy.h
//  Httproxy
//
//  Created by wangmeng on 14-10-15.
//  Copyright (c) 2014年 DM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HttpProxy : NSObject
+(NSString *)HttpPostUrl:(NSString *)url data:(NSString*)data ;
+(NSString *)HttpGetUrl:(NSString*)url data:(NSString *)data;
@end
