//
//  XZZHouseView.m
//  Drawing a House
//
//  Created by Zac on 1/01/2015.
//  Copyright (c) 2015 1st1k. All rights reserved.
//

#import "XZZHouseView.h"

@implementation XZZHouseView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    NSLog(@"hello");
    UIBezierPath *house = [UIBezierPath bezierPath];
    house.lineWidth = 2.0;
    [house moveToPoint:CGPointMake(1/2.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    [house addLineToPoint:CGPointMake(3/4.0 * self.bounds.size.width, 1/2.0 * self.bounds.size.height)];
    [house addLineToPoint:CGPointMake(3/4.0 * self.bounds.size.width, 3/4.0 * self.bounds.size.height)];
    [house addLineToPoint:CGPointMake(1/4.0 * self.bounds.size.width, 3/4.0 * self.bounds.size.height)];
    [house addLineToPoint:CGPointMake(1/4.0 * self.bounds.size.width, 1/2.0 * self.bounds.size.height)];
    [house closePath];
    [house stroke];
    
    UIBezierPath *chimney = [UIBezierPath bezierPath];
    chimney.lineWidth = 2.0;
    [chimney moveToPoint:CGPointMake(7/12.0 * self.bounds.size.width, 46/120.0 * self.bounds.size.height)];
    [chimney addLineToPoint:CGPointMake(7/12.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    [chimney addLineToPoint:CGPointMake(8/12.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    [chimney addLineToPoint:CGPointMake(8/12.0 * self.bounds.size.width, 53/120.0 * self.bounds.size.height)];
    [chimney closePath];
    [chimney stroke];
    
}

@end
