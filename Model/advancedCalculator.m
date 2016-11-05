//
//  advancedCalculator.m
//  Calculator
//
//  Created by 姚德义 on 16/11/2.
//  Copyright © 2016年 ustc. All rights reserved.
//

#import "advancedCalculator.h"

@implementation advancedCalculator

-(void)clearAll{
    self.input=nil;
    self.screen=nil;
}
/** 绝对值*/
-(NSString *)abs:(NSString *)content{
    if(![self isNumberic:content]){
        NSLog(@"abs:input error!");
        return @"Error input!";
    }
    double result=fabs([content doubleValue]);
    return [NSString stringWithFormat:@"%f",result];
}

/** 根号*/
-(NSString *)sqrt:(NSString *)content{
    if(![self isNumberic:content]){
        NSLog(@"sqrt: input error!");
        return @"Error input!";
    }
    double result=sqrt([content doubleValue]);
    return [NSString stringWithFormat:@"%f",result];
}

/** 倒数*/
-(NSString *)reciprocal:(NSString *)content{
    if(![self isNumberic:content]){
        NSLog(@"reciprocal: input error!");
        return @"Error input!";
    }
    double result=1.0/[content doubleValue];
    return [NSString stringWithFormat:@"%f",result];
}

/** x的平方*/
-(NSString *)pow2:(NSString *)content{
    if(![self isNumberic:content]){
        NSLog(@"pow2: input error!");
        return @"Error input!";
    }
    double result=pow([content doubleValue], 2);
    return [NSString stringWithFormat:@"%f",result];
}

/** sin函数*/
-(NSString *)sin:(NSString *)content{
    if(![self isNumberic:content]){
        NSLog(@"sin: input error!");
        return @"Error input!";
    }
    double result=sin([content doubleValue]);
    return [NSString stringWithFormat:@"%f",result];
}

/** cos函数*/
-(NSString *)cos:(NSString *)content{
    if(![self isNumberic:content]){
        NSLog(@"cos: input error!");
        return @"Error input!";
    }
    double result=cos([content doubleValue]);
    return [NSString stringWithFormat:@"%f",result];
}

/** tan函数*/
-(NSString *)tan:(NSString *)content{
    if(![self isNumberic:content]){
        NSLog(@"tan: input error!");
        return @"Error input!";
    }
    double result=tan([content doubleValue]);
    return [NSString stringWithFormat:@"%f",result];
}

/** x的三次方*/
-(NSString *)pow3:(NSString *)content{
    if(![self isNumberic:content]){
        NSLog(@"pow3: input error!");
        return @"Error input!";
    }
    double result=pow([content doubleValue], 3);
    return [NSString stringWithFormat:@"%f",result];
}

/** arcsin函数*/
-(NSString *)arcsin:(NSString *)content{
    if(![self isNumberic:content]){
        NSLog(@"arcsin: input error!");
        return @"Error input!";
    }
    double result=asin([content doubleValue]);
    return [NSString stringWithFormat:@"%f",result];
}

/** arccos函数*/
-(NSString *)arccos:(NSString *)content{
    if(![self isNumberic:content]){
        NSLog(@"arccos: input error!");
        return @"Error input!";
    }
    double result=acos([content doubleValue]);
    return [NSString stringWithFormat:@"%f",result];
}

/** arctan函数*/
-(NSString *)arctan:(NSString *)content{
    if(![self isNumberic:content]){
        NSLog(@"arctan: input error!");
        return @"Error input!";
    }
    double result=atan([content doubleValue]);
    return [NSString stringWithFormat:@"%f",result];
}

/** ln*/
-(NSString *)loge:(NSString *)content{
    if(![self isNumberic:content]){
        NSLog(@"loge: input error!");
        return @"Error input!";
    }
    double result=log([content doubleValue]);
    return [NSString stringWithFormat:@"%f",result];
}

/** sinh函数*/
-(NSString *)sinh:(NSString *)content{
    if(![self isNumberic:content]){
        NSLog(@"sinh: input error!");
        return @"Error input!";
    }
    double result=sinh([content doubleValue]);
    return [NSString stringWithFormat:@"%f",result];
}

/** cosh函数*/
-(NSString *)cosh:(NSString *)content{
    if(![self isNumberic:content]){
        NSLog(@"cosh: input error!");
        return @"Error input!";
    }
    double result=cosh([content doubleValue]);
    return [NSString stringWithFormat:@"%f",result];
}

/** tanh函数*/
-(NSString *)tanh:(NSString *)content{
    if(![self isNumberic:content]){
        NSLog(@"tanh: input error!");
        return @"Error input!";
    }
    double result=tanh([content doubleValue]);
    return [NSString stringWithFormat:@"%f",result];
}

/** log10函数*/
-(NSString *)log10:(NSString *)content{
    if(![self isNumberic:content]){
        NSLog(@"log10: input error!");
        return @"Error input!";
    }
    double result=log10([content doubleValue]);
    return [NSString stringWithFormat:@"%f",result];
}


@end
