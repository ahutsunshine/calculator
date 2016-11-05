//
//  ViewController.m
//  Calculator
//
//  Created by 姚德义 on 16/11/2.
//  Copyright © 2016年 ustc. All rights reserved.
//

#import "ViewController.h"
#import "advancedCalculator.h"
#import "SecondViewController.h"

@interface ViewController ()

@property (strong, nonatomic) advancedCalculator *calculate;
@property (weak, nonatomic) IBOutlet UITextField *inputResult;

@property int flag;
@end


@implementation ViewController
-(advancedCalculator *)calculator{
    if(!_calculate){
        _calculate=[[advancedCalculator alloc]init];
    }
    return _calculate;
}


/** 基本输入数字和操作符在同一个事件进行处理*/
- (IBAction)touchViewExpression:(UIButton *)sender {
    
    if([self.inputResult.text length]!=0&&_flag==1){
        NSString *ch=[[sender titleLabel] text];
        if([ch isEqualToString:@"("]||[ch isEqualToString:@"×"]
           ||[ch isEqualToString:@"÷"]
           ||[ch isEqualToString:@"+"]
           ||[ch isEqualToString:@"-"]
           ||[ch isEqualToString:@")"]){
            self.inputResult.text=@"暂不支持连续运算";
            self.calculator.input=nil;
            _flag=1;
            return;
        }else{
            self.inputResult.text=nil;
            self.calculator.input=nil;
            _flag=0;
        }
    }
    
    //这种处理的原因是对x ÷进行实际运算的替换* /，但显示仍然是x +
    if([[[sender titleLabel] text] isEqualToString:@"×"]){
        [self.calculator.input appendString:@"*"];
    }else if([[[sender titleLabel] text] isEqualToString:@"÷"]){
        [self.calculator.input appendString:@"/"];
    }else{
        [self.calculator.input appendString:[[sender titleLabel] text]];
    }
    NSMutableString *originalString=[NSMutableString stringWithString:self.inputResult.text];
    [originalString appendString:[[sender titleLabel] text]];
    self.inputResult.text=originalString;
    self.calculator.screen=originalString;
}


/** 清空输出框数据以及存储的数据*/
- (IBAction)clearInputExpression:(UIButton *)sender {
    self.inputResult.text=nil;
    [self.calculator clearAll];
    _flag=0;
}


/** 删除输入数字的最后一个字符*/
- (IBAction)deleteExpressionLastNumber:(UIButton *)sender {
    NSInteger length=[self.calculator.input length];
    if(length>0){
        [self.calculator.input deleteCharactersInRange:NSMakeRange(length-1, 1)];
        //一定也要对输入框中的表达式进行处理，因为input里面的× ÷和显示的* /不同
        NSMutableString *delResultString=[NSMutableString stringWithString:self.inputResult.text];
        [delResultString deleteCharactersInRange:NSMakeRange(length-1, 1)];
        NSLog(@"deleteResult=%@",self.calculator.input);
        self.calculator.screen=delResultString;
        self.inputResult.text=delResultString;
    }
}





/** 核心操作 计算结果*/
- (IBAction)calculateExpression:(UIButton *)sender {
    //标志为1，表明已经按了=键，计算了结果，下次再输入其他表达式会先清空数据
    _flag=1;
    if([self.inputResult.text length]==0){
        self.inputResult.text=@"Error input!";
        return;
    }
    
    NSMutableString *calculateResult=[NSMutableString stringWithString:self.calculator.input];
    [calculateResult appendString:[[sender titleLabel] text]];
    self.inputResult.text=[self.calculator ExpressionCalculate:calculateResult];
    NSMutableString *tempStr=[NSMutableString stringWithString:self.inputResult.text];;
    self.calculator.screen = tempStr;//每次计算之后，将结果也保存在screen中
}

/** 为下一个场景传递数据 */
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"SecondScene"]){
        if([segue.destinationViewController isKindOfClass:[SecondViewController class]]){
            SecondViewController *svc=(SecondViewController *)segue.destinationViewController;
            svc.calculator=self.calculator;
        }
    }
}

/** 显示下一个前景传递来的数据 */
-(void)viewWillAppear:(BOOL)animated{
    self.inputResult.text=self.calculator.screen;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.calculate=[[advancedCalculator alloc]init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
