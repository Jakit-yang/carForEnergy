//
//  BaseViewController.m
//  carForEnergy
//
//  Created by qc on 2017/3/31.
//  Copyright © 2017年 新能源. All rights reserved.
//

#import "BaseViewController.h"
@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setShowsShadow:NO];
    [self setRestorationIdentifier:@"MMDrawer"];
    [self setMaximumRightDrawerWidth:200.0];
    [self setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
    [self setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
    
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
