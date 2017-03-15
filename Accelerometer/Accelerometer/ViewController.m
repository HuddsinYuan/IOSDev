//
//  ViewController.m
//  Accelerometer
//
//  Created by 袁晨 on 2017/3/15.
//  Copyright © 2017年 袁晨. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[UIAccelerometer sharedAccelerometer] setUpdateInterval:0.5];
    [[UIAccelerometer sharedAccelerometer] setDelegate:self];
    
}

- (void)accelerometer:(UIAccelerometer*) accelerometer
    didAccelerate:(UIAcceleration *)acceleration
{
    NSLog(@"x = %f", acceleration.x);
    self.xLabel.text = [NSString stringWithFormat:@"x = %0.2fg", acceleration.x];
    self.xbar.progress = ABS(acceleration.x);
    
    NSLog(@"y = %f", acceleration.y);
    self.yLabel.text = [NSString stringWithFormat:@"y = %0.2fg", acceleration.y];
    self.ybar.progress = ABS(acceleration.y);
    
    NSLog(@"z = %f", acceleration.x);
    self.zLabel.text = [NSString stringWithFormat:@"z = %0.2fg", acceleration.z];
    self.zbar.progress = ABS(acceleration.z);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    [[UIAccelerometer sharedAccelerometer] setDelegate:nil];
}


@end
