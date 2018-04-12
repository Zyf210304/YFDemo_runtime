//
//  NSObject+YFRuntiume.m
//  YFDemo_runtime
//
//  Created by 亚飞 on 2018/4/12.
//  Copyright © 2018年 yafei. All rights reserved.
//

#import "NSObject+YFRuntiume.h"
#import <objc/runtime.h>

@implementation NSObject (YFRuntiume)

+(id)msgSendToObj_invocation:(id)obj Selector:(SEL)selector Prarms:(NSArray*)params NeedReturn:(BOOL)needReturn{
    id value = nil;
    if (obj && selector) {
        if ([obj respondsToSelector:selector]) {
            NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[[obj class] instanceMethodSignatureForSelector:selector]];
            [invocation setSelector:selector];
            [invocation setTarget:obj];
            for (int i=0; i < params.count; i++) {
                id ref = params[i];
                [invocation setArgument:&ref atIndex:2+i];
            }
            [invocation invoke];//perform 的传参表达方式
            if(needReturn){//获得返回值
                void *vvl = nil;
                [invocation getReturnValue:&vvl];
                value = (__bridge id)vvl;
            }
        }else{

            NSLog(@"msgToTarget -->>> %@",obj);

        }
    }
    return value;
}

+(id)msgSendToClass_invocation:(Class)YSClass Selector:(SEL)selector Prarms:(NSArray*)params NeedReturn:(BOOL)needReturn{
    id value = nil;
    Method method = class_getClassMethod(YSClass, selector);
    if((int)method != 0){
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[YSClass methodSignatureForSelector:selector]];
        [invocation setSelector:selector];
        [invocation setTarget:YSClass];
        for (int i=0; i < params.count; i++) {
            id ref = params[i];
            [invocation setArgument:&ref atIndex:2+i];
        }
        [invocation invoke];//perform 的传参表达方式
        if(needReturn){//获得返回值
            void *vvl = nil;
            [invocation getReturnValue:&vvl];
            value = (__bridge id)vvl;
        }
    }else{
        NSLog(@"msgToClass -->>>%@",YSClass);

    }
    return value;
}




@end

