//
//  HistogramViewController.m
//  GraphicalDemo
//
//  Created by BillBo on 2017/8/17.
//  Copyright © 2017年 BillBo. All rights reserved.
//

#import "HistogramViewController.h"

#import "HistogramView.h"

#import "BrokenLineView.h"

@interface HistogramViewController ()

/**
 柱状图
 */
@property (nonatomic, strong) HistogramView *histogramV;

/**
 折线图
 */
@property (nonatomic, strong) BrokenLineView * brokenLineV;

/**
 当前类型
 */
@property (nonatomic, assign)  Type currentType;

@end

@implementation HistogramViewController

- (instancetype)initWithType:(Type)type title:(NSString *)title{
    
    if (self = [super init]) {
        
        self.currentType = type;
        
        self.title = title;
    }
    
    return self;
}

- (void)viewDidLoad {
   
    [super viewDidLoad];
   
    self.view.backgroundColor = [UIColor whiteColor];
    
    switch (self.currentType) {
        case Histogram_Type:
        {
            [self histogramTest];
        }
            break;
        case BrokenLine_Type:{
            [self brokenLineTest];
        }
            break;
        default:
            break;
    }
    
}

#pragma mark - 柱状图

- (void)histogramTest {
    
    //数据组
    NSArray *arr = @[@30,@50, @180,@100, @120, @230];
    
    //Y轴左侧数据组
    NSArray *Y_LeftArray = @[@100, @130, @150, @200, @220];
    
    //Y轴右侧数据组
    NSArray *Y_RightArray = @[@20, @40,@80,@180,@210];
    
    //X轴数据
    NSArray *X_Data = @[@"一月",@"二月",@"三月",@"四月",@"五月",@"六月"];
    
    self.histogramV = [[HistogramView alloc] initWithFrame:self.view.bounds title:@"" YAxisLeftData:[Y_LeftArray mutableCopy] YAxisRightData:[Y_RightArray mutableCopy] YData:[arr mutableCopy] XData:[X_Data mutableCopy]];
    
    [self.view addSubview:self.histogramV];
    
    [self.histogramV setNeedsDisplay];
    
}


#pragma mark - 折线图

- (void)brokenLineTest {
    
    self.brokenLineV = [[BrokenLineView alloc] initWithFrame:self.view.bounds];
    
    [self.view addSubview:self.brokenLineV];
    
    [self.brokenLineV setNeedsDisplay];
    
}



- (void)viewDidLayoutSubviews{
    
    [super viewDidLayoutSubviews];
    
    if (self.histogramV) {
        
        self.histogramV.frame = CGRectMake(5, 100, self.view.frame.size.width - 10, 300);
    }
    
    if (self.brokenLineV) {
        
        self.brokenLineV.frame = CGRectMake(5, 100, self.view.frame.size.width - 10, 300);
    }
    
}


- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];

}

@end
