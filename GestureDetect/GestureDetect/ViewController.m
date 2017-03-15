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
//    UIPanGestureRecognizer *panrecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(foundpanTap:)];
    
//    panrecognizer.minimumNumberOfTouches = 1;
//    panrecognizer.maximumNumberOfTouches = 1;
    
//    CGRect frame = CGRectMake(107.0f, 253.0f, 160.0f, 160.0f);
    
    
//    self.imageView = [[UIImageView alloc] init];
    self.imageView.image = self.myimage;
    self.imageView.userInteractionEnabled = YES;
    
    
//    self.imageView.frame = frame;
//    [self.view addSubview:self.imageView];
    
    UIRotationGestureRecognizer *rotrecognizer = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(foundrotTap:)];
    
//    [self.view addGestureRecognizer: panrecognizer];
    [self.view addGestureRecognizer: rotrecognizer];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)foundpanTap:(UIPanGestureRecognizer*) paramSender
{
//    NSLog(@"Draw state = %s", paramSender.state);
    
    if(paramSender.state != UIGestureRecognizerStateEnded &&
       paramSender.state != UIGestureRecognizerStateFailed) {
        CGPoint loc = [paramSender locationInView:paramSender.view.superview];
        paramSender.view.center = loc;
    }
}
- (void)foundrotTap:(UIRotationGestureRecognizer*) paramSender
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
