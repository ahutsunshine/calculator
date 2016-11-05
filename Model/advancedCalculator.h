//
//  advancedCalculator.h
//  Calculator
//
//  Created by 姚德义 on 16/11/2.
//  Copyright © 2016年 ustc. All rights reserved.
//

#import "Calculate.h"
#import <math.h>

@interface advancedCalculator : Calculate

@property(nonatomic,strong)NSMutableString *screen;

//高级计算
-(NSString *)sqrt:(NSString *)content;      //根号
-(NSString *)abs:(NSString *)content;       //绝对值
-(NSString *)reciprocal:(NSString *)content;//倒数
-(NSString *)pow2:(NSString *)content;      //x的平方

-(NSString *)sin:(NSString *)content;       //sin函数
-(NSString *)cos:(NSString *)content;       //cos函数
-(NSString *)tan:(NSString *)content;       //tan函数
-(NSString *)pow3:(NSString *)content;      //x的三次方

-(NSString *)arcsin:(NSString *)content;    //arcsin函数
-(NSString *)arccos:(NSString *)content;    //arccos函数
-(NSString *)arctan:(NSString *)content;    //arctan函数
-(NSString *)loge:(NSString *)content;      //ln

-(NSString *)sinh:(NSString *)content;      //sinh函数
-(NSString *)cosh:(NSString *)content;      //cosh函数
-(NSString *)tanh:(NSString *)content;      //tanh函数
-(NSString *)log10:(NSString *)content;     //log10

@end
