//
//  YFMethod_changeVC.m
//  YFDemo_runtime
//
//  Created by 亚飞 on 2018/4/12.
//  Copyright © 2018年 yafei. All rights reserved.
//

#import "YFMethod_changeVC.h"
#import "UIImage+YFCategory.h"
@interface YFMethod_changeVC ()

@end

@implementation YFMethod_changeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    UIImageView *image1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 40, 100, 100)];
    image1.image = [UIImage imageNamed:@"布鲁克.jpeg"];
    image1.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:image1];

    UIImageView *image2 = [[UIImageView alloc] initWithFrame:CGRectMake(100, 140, 100, 100)];
    image2.image = [UIImage imageNamed:@"路飞.jpeg"];
    [self.view addSubview:image2];

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
