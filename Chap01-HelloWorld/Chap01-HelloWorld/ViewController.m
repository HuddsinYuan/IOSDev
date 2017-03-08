//
//  ViewController.m
//  Chap01-HelloWorld
//
//  Created by 袁晨 on 2017/3/8.
//  Copyright © 2017年 袁晨. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    // Console output
    NSLog(@"Hello, World!");
    
    // Alert Window
    // alloc means it will create an UIAlertView instance.
    UIAlertView *alert = [UIAlertView alloc];
    alert = [alert initWithTitle:@"Hey there!"
                         message:@"Welcome to OpenCV on IOS development community"
                        delegate:nil
               cancelButtonTitle:@"Continue"
               otherButtonTitles:nil];
    // tell the system to show the alert when the view finish the loading.
    [alert show];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
