//
//  UIImage+YFCategory.m
//  YFDemo_runtime
//
//  Created by 亚飞 on 2018/4/12.
//  Copyright © 2018年 yafei. All rights reserved.
//

#import "UIImage+YFCategory.h"
#import "NSObject+YFRuntiume.h"
#import <objc/runtime.h>
@implementation UIImage (YFCategory)

+ (void)load {
//    Method originalM = class_getClassMethod([self class], @selector(imageNamed:));
//
//    /** 获取自定义的pb_setBackgroundColor方法 */
//    Method exchangeM = class_getClassMethod([self class], @selector(imageNameNextWith:));
//
//    /** 交换方法 */
//    method_exchangeImplementations(originalM, exchangeM);

    [NSObject swizzleClassSelector:@selector(imageNamed:) withClassSelector:@selector(imageNameNextWith:) withClass:[self class]];
}


+ (UIImage *)imageNameNextWith:(NSString *)nameString {
    UIImage *image = nil;
    if ([nameString isEqualToString:@"布鲁克.jpeg"]) {
        NSLog(@"++++++");
        image = [UIImage imageNameNextWith:@"路飞.jpeg"];
    } else {
        NSLog(@"------");
        image = [UIImage imageNameNextWith:nameString];
    }
    return image;
}

@end
