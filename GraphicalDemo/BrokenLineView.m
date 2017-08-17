//
//  BrokenLineView.m
//  GraphicalDemo
//
//  Created by BillBo on 2017/8/17.
//  Copyright © 2017年 BillBo. All rights reserved.
//

#import "BrokenLineView.h"

@implementation BrokenLineView

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = [UIColor lightGrayColor];
        
    }
    
    return self;
    
}

- (void)drawRect:(CGRect)rect {

    self.layer.cornerRadius = 10;
    
    self.layer.backgroundColor = [UIColor greenColor].CGColor;
    
    self.layer.masksToBounds = YES;
    
    NSArray *X_Array = @[];
    
    NSArray *Y_Array = @[];
  
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    
    
}

@end
