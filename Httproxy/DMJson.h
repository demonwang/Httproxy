//
//  DMJson.h
//  Httproxy
//
//  Created by wangmeng on 14-10-15.
//  Copyright (c) 2014年 DM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DMJson : NSMutableDictionary
-(void)initWithJsonString:(NSString*)json;
-(NSString*)getString:(NSString*)key;
-(NSNumber*)getNum:(NSString*)key;
-(NSArray*)getArray:(NSString*)key;
-(DMJson*)getJson:(NSString *)key;
+(NSString)toJsonStr:(DMJson*)js;

@end
