//
//  Calculate.h
//  Basic_Calculator
//
//  Copyright © 2016年 ustc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Stack.h"

@interface Calculate : NSObject

@property(nonatomic,strong) NSMutableString *input;

+(NSArray *)validOperator;
+(NSDictionary *)inStackPriority;
+(NSDictionary *)outStackPriority;

//判断输入的字符串中是否全是数字
-(BOOL)isNumberic:(NSString *) ch;

//判断是操作符还是操作数
-(BOOL)isOperator:(NSString *) ch;

//判断是否是整数
-(BOOL)isInteger:(NSString *)content;

//判断是否输入了连续的运算符
-(BOOL)isValidInput:(NSString *) ch;

-(NSString *)comparePriority:(NSString *)inOptr outOptr:(NSString *)outOptr;

-(double)calculate:(double)opnd1 opnd2:(double)opnd2 optr:(NSString *)optr;

-(NSMutableArray *)clearWhitespace:(NSMutableArray *) inputArray;

-(NSString *)ExpressionCalculate:(NSString *)inputString;

-(void)clearAll;
-(void)delNumber;

@end
