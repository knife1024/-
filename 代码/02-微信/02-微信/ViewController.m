//
//  ViewController.m
//  02-微信
//
//  Created by xiaomage on 15/8/13.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//

#import "ViewController.h"
#import "TimelineViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"homeToTimeline"]) {
        TimelineViewController *timelineVc = segue.destinationViewController;
        timelineVc.urlString = self.urlString;
    }
}

@end
