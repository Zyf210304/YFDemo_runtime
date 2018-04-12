//
//  YFObjc_msgSend.m
//  YFDemo_runtime
//
//  Created by 亚飞 on 2018/4/12.
//  Copyright © 2018年 yafei. All rights reserved.
//

#import "YFObjc_msgSend.h"
#import "YFPersonModel.h"
#import "NSObject+YFRuntiume.h"
@interface YFObjc_msgSend ()

@end

@implementation YFObjc_msgSend

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    YFPersonModel* person = [[YFPersonModel alloc] init];

    [NSObject msgSendToObj_invocation:person Selector:NSSelectorFromString(@"eat") Prarms:nil NeedReturn:NO];
    [NSObject msgSendToClass_invocation:NSClassFromString(@"YFPersonModel") Selector:NSSelectorFromString(@"eat") Prarms:nil NeedReturn:NO];

    [NSObject msgSendToObj_invocation:person Selector:NSSelectorFromString(@"sleepOfHour:") Prarms:@[@(10)] NeedReturn:NO];
    [NSObject msgSendToClass_invocation:NSClassFromString(@"YFPersonModel") Selector:NSSelectorFromString(@"sleepOfHour:") Prarms:@[@(8)] NeedReturn:NO];

    id objR_in = [NSObject msgSendToObj_invocation:person Selector:NSSelectorFromString(@"eatEnough:") Prarms:@[@(100)] NeedReturn:YES];
    id classR_in = [NSObject msgSendToClass_invocation:NSClassFromString(@"YFPersonModel") Selector:NSSelectorFromString(@"eatEnough:") Prarms:@[@(100)] NeedReturn:YES];
    NSLog(@"objR_in_%@ classR_in_%@", objR_in, classR_in);

    
    id reat_obj = [NSObject msgSendToObj_invocation:person Selector:NSSelectorFromString(@"eatNumber:withName:") Prarms:@[@(10), @"饺子"] NeedReturn:YES];
    id reat_class = [NSObject msgSendToClass_invocation:NSClassFromString(@"YFPersonModel") Selector:NSSelectorFromString(@"eatNumber:withName:") Prarms:@[@(1), @"榴莲"] NeedReturn:YES];

    NSLog(@"%@\n%@", reat_obj, reat_class);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
