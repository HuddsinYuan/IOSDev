//
//  ViewController.h
//  GestureDetect
//
//  Created by 袁晨 on 2017/3/14.
//  Copyright © 2017年 袁晨. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    CGFloat rotationAngleInRadius;
}

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@property (strong, nonatomic) UIImage* myimage;
@end

