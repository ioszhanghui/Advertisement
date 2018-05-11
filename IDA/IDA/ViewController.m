//
//  ViewController.m
//  IDA
//
//  Created by 小飞鸟 on 2018/5/10.
//  Copyright © 2018年 小飞鸟. All rights reserved.
//

#import "ViewController.h"
#import <iAd/iAd.h>


@interface ViewController ()<ADBannerViewDelegate>

@property(nonatomic,strong)ADBannerView * adBannerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.adBannerView = [[ADBannerView alloc]initWithAdType:ADAdTypeBanner];
    self.adBannerView.delegate = self;
    self.adBannerView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.adBannerView];
    
   CGFloat width = self.view.bounds.size.width;
    CGFloat hight = self.view.bounds.size.height;
    
    self.adBannerView.frame =CGRectMake(0, hight-50, width, 50);
    
}


- (void)bannerViewWillLoadAd:(ADBannerView *)banner{
    NSLog(@"将要加载");
}

- (void)bannerViewDidLoadAd:(ADBannerView *)banner{
    
     NSLog(@"加载广告完成");
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error{
    NSLog(@"广告加载失败");
}

- (BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave{
    NSLog(@"点击广告是否进入详情页");
    
    return YES;
}

@end
