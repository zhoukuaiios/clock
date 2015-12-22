//
//  ViewController.m
//  Clock
//
//  Created by zhou on 15/11/24.
//  Copyright © 2015年 zhou. All rights reserved.
//

#import "ViewController.h"
#import "zkview.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *clock;
@property (weak, nonatomic) IBOutlet UIImageView *clockPoint;
@property (weak, nonatomic) IBOutlet UIImageView *rotatePoint;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet zkview *myview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.slider.minimumValue = 0;
    self.slider.maximumValue = M_PI * 2;
    NSLog(@"point (%.0f %.0f)",self.rotatePoint.layer.anchorPoint.x,self.rotatePoint.layer.anchorPoint.y);
    self.rotatePoint.layer.anchorPoint = CGPointMake(0.5, 1);
}

- (IBAction)ratate:(UISlider*)sender {
    self.rotatePoint.transform = CGAffineTransformMakeRotation(sender.value);
    self.myview.value = sender.value;
}


@end
