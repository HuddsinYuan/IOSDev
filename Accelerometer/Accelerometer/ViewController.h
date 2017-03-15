//
//  ViewController.h
//  Accelerometer
//
//  Created by 袁晨 on 2017/3/15.
//  Copyright © 2017年 袁晨. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *xLabel;

@property (strong, nonatomic) IBOutlet UILabel *yLabel;
@property (strong, nonatomic) IBOutlet UILabel *zLabel;
@property (strong, nonatomic) IBOutlet UIProgressView *xbar;
@property (strong, nonatomic) IBOutlet UIProgressView *ybar;
@property (strong, nonatomic) IBOutlet UIProgressView *zbar;

@end

