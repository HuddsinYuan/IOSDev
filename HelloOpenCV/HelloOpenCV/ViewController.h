//
//  ViewController.h
//  HelloOpenCV
//
//  Created by 袁晨 on 2017/3/9.
//  Copyright © 2017年 袁晨. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface ViewController : UIViewController {
    UIImage* originImage;
    UIImage* afterImage;
}

@property (nonatomic, weak) IBOutlet UIImageView* originImageView;
@property (nonatomic, weak) IBOutlet UIImageView* afterImageView;

@end

