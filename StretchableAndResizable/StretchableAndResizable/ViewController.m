//
//  ViewController.m
//  StretchableAndResizable
//
//  Created by Hannibal Yang on 11/14/14.
//  Copyright (c) 2014 Hannibal Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(110, 110, 110, 110);
    UIImage *bg = [UIImage imageNamed:@"red.png"];
    
    // 1. iOS SDK 5.0之前的做法
    bg = [bg stretchableImageWithLeftCapWidth:bg.size.width * 0.5 topCapHeight:bg.size.height * 0.5];
    
    // 2. iOS 5.0的做法
//    bg = [bg resizableImageWithCapInsets:UIEdgeInsetsMake(25, 13, 25, 13)];
    
    // 3. iOS 6.0的做法（模式选择：Tile代表平铺，Stretch代表拉伸）UIImageResizingModeStretch和UIImageResizingModeTile
//    bg = [bg resizableImageWithCapInsets:UIEdgeInsetsMake(20, 10, 20, 10) resizingMode:UIImageResizingModeStretch];
    
    [btn setBackgroundImage:bg forState:UIControlStateNormal];
    [self.view addSubview:btn];
}
@end
