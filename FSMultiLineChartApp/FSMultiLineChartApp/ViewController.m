//
//  ViewController.m
//  FSMultiLineChartApp
//
//  Created by Erik on 30/03/16.
//  Copyright © 2016 Erik. All rights reserved.
//

#import "ViewController.h"
#import "FSMultiLineChart/FSMultiLineChart.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet FSMultiLineChart *dateChart;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configChart];
    
}

- (void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self loadChartData];
}
- (void) configChart {
    // Setting up the line chart
    _dateChart.verticalGridStep = 6;
    _dateChart.horizontalGridStep = 3;
    _dateChart.fillColor = nil;
    NSArray* months = @[@"January", @"February", @"March", @"April", @"May", @"June", @"July"];
    NSArray* colorArray = @[[UIColor redColor], [UIColor blueColor], [UIColor greenColor], [UIColor yellowColor],[UIColor blackColor]];
    [_dateChart setColorArray:colorArray];
    _dateChart.labelForIndex = ^(NSUInteger item) {
        return months[item];
    };
    
    _dateChart.labelForValue = ^(CGFloat value) {
        return [NSString stringWithFormat:@"%.02f €", value];
    };
    
    
}

- (void) loadChartData {
    NSMutableArray *chartArray = [NSMutableArray new];
    for (int i=0;i<5;i++) {
        [chartArray addObject:[self randomChartSingleArray]];
    }
    
    [_dateChart setChartData:chartArray];
}

- (NSArray *)randomChartSingleArray {
    // Generating some dummy data
    NSMutableArray* chartData = [NSMutableArray arrayWithCapacity:7];
    for(int i=0;i<7;i++) {
        chartData[i] = [NSNumber numberWithFloat: (float)i / 30.0f + (float)(rand() % 100) / 500.0f];
    }
    
    
    return chartData;
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
