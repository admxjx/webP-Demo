//
//  ViewController.m
//  webp-Demo
//
//  Created by admxjx on 2018/5/14.
//  Copyright © 2018年 admxjx. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+JXMethod.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *webPImgOfURL;
@property (strong, nonatomic) IBOutlet UIImageView *webPImgOfNative;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.webPImgOfURL jx_setImageWithUrl: @"http://images21.happyjuzi.com/test/ea/09/91f522741b7a0976b5f21a3b9f78.jpg!200.nw.webp"];
    [self.webPImgOfNative jx_setWebPWithWebPName:@"test2"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
