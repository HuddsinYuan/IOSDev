//
//  ViewController.m
//  GestureDetect
//
//  Created by 袁晨 on 2017/3/14.
//  Copyright © 2017年 袁晨. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSBundle *bundle = [NSBundle mainBundle];
    self.myimage = [[UIImage alloc] initWithContentsOfFile:[bundle pathForResource:@"lena" ofType:@"png"]];
    
    self.imageView.image = self.myimage;
    
    UIRotationGestureRecognizer *recognizer = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(foundTap:)];
    
    [self.view addGestureRecognizer: recognizer];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)foundTap:(UIRotationGestureRecognizer*) paramSender
{
    self.imageView.transform = CGAffineTransformMakeRotation(rotationAngleInRadius + paramSender.rotation);
    
    if(paramSender.state == UIGestureRecognizerStateEnded) {
        rotationAngleInRadius += paramSender.rotation;
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
