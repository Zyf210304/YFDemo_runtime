//
//  YFPersonModel.m
//  YFDemo_runtime
//
//  Created by 亚飞 on 2018/4/12.
//  Copyright © 2018年 yafei. All rights reserved.
//

#import "YFPersonModel.h"

@implementation YFPersonModel


/**
 吃饭实例方法 无参数 无返回值
 */
- (void)eat {
    NSLog(@"eat_person");
}


/**
 吃饭类方法 无参数 无返回值
 */
+ (void)eat {
    NSLog(@"eat_class");
}

/**
 *睡觉实例方法  有参数 无返回值
 */
-(void)sleepOfHour:(NSNumber*)hour{
    NSLog(@"sleep_person_%@",hour);
}
/**
 *睡觉类方法  有参数 无返回值
 */
+(void)sleepOfHour:(NSNumber*)hour{
    NSLog(@"sleep_class_%@",hour);
}


/**
 *是否吃饱实例方法 有参数 有返回值
 */
-(NSNumber*)eatEnough:(NSNumber*)breadCount{
    NSLog(@"breadCount_person_%@",breadCount);
    return @(1);
}

/**
 *是否吃饱类方法 有参数 有返回值
 */
+(NSNumber*)eatEnough:(NSNumber*)breadCount{
    NSLog(@"breadCount_class_%@",breadCount);
    return @(0);
}


/**
 *吃多少实例方法 有多个参数 有返回值
 */
- (id)eatNumber:(NSNumber *)number withName:(NSString *)name {
    NSLog(@"吃了%@个%@", number, name);
    return [NSString stringWithFormat:@"吃了%@个%@", number, name];
}

/**
 *吃多少类方法有参数 有返回值
 */
+ (id)eatNumber:(NSNumber *)number withName:(NSString *)name {
    NSLog(@"吃了%@个%@", number, name);
    return [NSString stringWithFormat:@"吃了%@个%@", number, name];
}

@end
