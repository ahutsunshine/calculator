//
//  Calculate+Health.m
//  Calculator
//
//  Created by 姚德义 on 16/11/3.
//  Copyright © 2016年 ustc. All rights reserved.
//

#import "Calculate+Health.h"

@implementation Calculate (Health)
-(NSString *)computeHealthWithHeight:(NSString *)height andWeight:(NSString *)weight{
    NSMutableString *expression;
    expression = [NSMutableString stringWithString:weight];
    [expression appendString:@"/(("];
    [expression appendString:height];
    [expression appendString:@"/100.0)"];
    [expression appendString:@"*("];
    [expression appendString:height];
    [expression appendString:@"/100.0))="];
    self.input = expression;
    NSLog(@"health compute, input is %@", self.input);
    NSLog(@"health compute, expression is %@", expression);
    
    return [NSString stringWithFormat:@"%.2f", [[self ExpressionCalculate:self.input] floatValue]];
}

@end
