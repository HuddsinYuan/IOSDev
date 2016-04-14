//
//  ViewController.m
//  HelloIOS
//
//  Created by 袁晨 on 16/4/14.
//  Copyright © 2016年 HuddsinYuan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

int countval = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleClick:(id)sender {
    countval ++;
    if (countval % 2 == 0) {
        self.txTitle.text = @"Hello IOS";
    }
    else {
        self.txTitle.text = @"Hello Android";
    }
}

@end
