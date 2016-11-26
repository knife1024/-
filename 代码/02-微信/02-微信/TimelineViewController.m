//
//  TimelineViewController.m
//  02-微信
//
//  Created by xiaomage on 15/8/13.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//

#import "TimelineViewController.h"

@interface TimelineViewController ()

- (IBAction)backToApp;

@end

@implementation TimelineViewController

- (IBAction)backToApp {
    
    // 0.拿到对应应用程序的urlScheme(wechat://session?news)
    /*
    NSRange range = [self.urlString rangeOfString:@"?"];
    range.location;
    self.urlString substringFromIndex:range.location
     */
    NSString *urlSchemeString = [[self.urlString componentsSeparatedByString:@"?"] lastObject];
    NSString *urlString = [urlSchemeString stringByAppendingString:@"://"];
    
    // 1.获取对应应用程序的URL
    NSURL *url = [NSURL URLWithString:urlString];
    
    // 2.判断是否可以打开
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url];
    }
}
@end
