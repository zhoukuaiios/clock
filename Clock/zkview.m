//
//  customView.m
//  Clock
//
//  Created by zhou on 15/11/24.
//  Copyright © 2015年 zhou. All rights reserved.
//

#import "zkview.h"

@implementation zkview

-(void)setValue:(CGFloat)value{
    _value = value;
    [self setNeedsDisplay];
}

// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef  context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    UIBezierPath *path = [UIBezierPath bezierPath];
    CGPoint center = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
    [path moveToPoint:center];
    CGFloat  radius = (self.frame.size.width-20)/2;
    [path addArcWithCenter:center
                    radius:radius
                startAngle:3*M_PI_2
                  endAngle:(self.value+3*M_PI_2 )
                 clockwise:YES];
    [path moveToPoint:center];
    [path closePath];
    [[UIColor colorWithRed:1.0 green:0 blue:0 alpha:self.value/(3*M_PI)] setFill];
    path.lineWidth = 1;
    [path fill];
    CGContextRestoreGState(context);
}

@end
