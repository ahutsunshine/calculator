//
//  Stack.m
//  Basic_Calculator
//
//  Copyright © 2016年 ustc. All rights reserved.
//

#import "Stack.h"

@interface Stack ()

@property(nonatomic, readwrite) NSString *Top;
@property(nonatomic, readwrite) NSMutableArray *stackArray;
@property(nonatomic, readwrite) NSString *popElement;

@end

@implementation Stack

-(instancetype)initWithStacksize:(NSUInteger)Stacksize
{
    self = [super init];//must
    if (self) {
        self.stackArray = [[NSMutableArray alloc]initWithCapacity:Stacksize];
        for (NSUInteger i = 0; i < Stacksize; i++) {
            [self.stackArray addObject:@"#"];
        }
        self.Top = [self.stackArray lastObject];
        //NSLog(@"After initialization, Top is %@,stackArray:%@", self.Top, self.stackArray);
    }
    return self;
}

-(BOOL)push:(NSString *)element stack:(Stack *)stack
{
    if (stack.stackArray.count == self.Stacksize) {
        return NO;
    }else{
        [stack.stackArray addObject:element];
        stack.Top = [stack.stackArray lastObject];
        NSLog(@"push %@ succeed", stack.Top);
        return YES;
    }
}

-(NSString *)pop:(Stack *)stack
{
    if (stack.stackArray.count == 0) {
        NSLog(@"stack is empty, pop failed!");
        return nil;
    }else{
        self.popElement = [stack.stackArray lastObject];
        [stack.stackArray removeLastObject];
        stack.Top = [stack.stackArray lastObject];
        
        NSLog(@"pop %@ succeed, and now top is %@", self.popElement, stack.Top);
        return self.popElement;
    }
}

-(NSString *)getTop:(Stack *)stack
{
    if (stack.stackArray.count == 0){
        NSLog(@"Empty Stack!");
        return nil;
    }
    else
        return stack.Top;
}


@end
