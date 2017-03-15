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

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
 
    self.motionManager = [[CMMotionManager alloc] init];
    self.motionManager.accelerometerUpdateInterval = 0.2;
    
    if([self.motionManager isAccelerometerAvailable]) {
        [self.motionManager
         startAccelerometerUpdatesToQueue:[NSOperationQueue mainQueue]
         withHandler:^(CMAccelerometerData* accelerometerData, NSError *error){
         if(error) {
             [self.motionManager stopAccelerometerUpdates];
         } else{
             NSLog(@"x = %f" ,accelerometerData.acceleration.x);
             self.xLabel.text = [NSString
                                 stringWithFormat:@"x = %0.2fg", accelerometerData.acceleration.x];
             self.xbar.progress = ABS(accelerometerData.acceleration.x);
             
             NSLog(@"y = %f" ,accelerometerData.acceleration.y);
             self.yLabel.text = [NSString
                                 stringWithFormat:@"y = %0.2fg", accelerometerData.acceleration.y];
             self.ybar.progress = ABS(accelerometerData.acceleration.x);
             
             NSLog(@"z = %f" ,accelerometerData.acceleration.z);
             self.zLabel.text = [NSString
                                 stringWithFormat:@"z = %0.2fg", accelerometerData.acceleration.z];
             self.zbar.progress = ABS(accelerometerData.acceleration.z);
         }
         
         }];
    }
    else {
        NSLog(@"Accelerometer is not available.");
    }
    
}
//
//- (void)accelerometer:(UIAccelerometer*) accelerometer
//    didAccelerate:(UIAcceleration *)acceleration
//{
//    NSLog(@"x = %f", acceleration.x);
//    self.xLabel.text = [NSString stringWithFormat:@"x = %0.2fg", acceleration.x];
//    self.xbar.progress = ABS(acceleration.x);
//    
//    NSLog(@"y = %f", acceleration.y);
//    self.yLabel.text = [NSString stringWithFormat:@"y = %0.2fg", acceleration.y];
//    self.ybar.progress = ABS(acceleration.y);
//    
//    NSLog(@"z = %f", acceleration.z);
//    self.zLabel.text = [NSString stringWithFormat:@"z = %0.2fg", acceleration.z];
//    self.zbar.progress = ABS(acceleration.z);
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
//    [[UIAccelerometer sharedAccelerometer] setDelegate:nil];
    [self.motionManager stopAccelerometerUpdates];
}


@end
