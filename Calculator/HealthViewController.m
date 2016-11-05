//
//  HealthViewController.m
//  Calculator
//
//  Created by 姚德义 on 16/11/3.
//  Copyright © 2016年 ustc. All rights reserved.
//

#import "HealthViewController.h"
#import "Calculate.h"
#import "Calculate+Health.h"
@interface HealthViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtHeight;
@property (weak, nonatomic) IBOutlet UITextField *txtWeight;
@property (weak, nonatomic) IBOutlet UILabel *labelAdvice;
@property (weak, nonatomic) IBOutlet UIButton *btnCalculate;
@property (weak, nonatomic) IBOutlet UILabel *labelScore;
@property (weak, nonatomic) IBOutlet UIView *container;
@property (strong,nonatomic)Calculate* calculator;
@end

@implementation HealthViewController

-(Calculate *)calculator{
    if(!_calculator){
        _calculator=[[Calculate alloc]init];
    }
    return _calculator;
}
- (IBAction)btnComputeHealthScore:(UIButton *)sender {
    if(self.txtHeight.text.length==0||self.txtWeight.text.length==0) {
        NSMutableString *message;
        if(self.txtHeight.text.length==0)
            message=[NSMutableString stringWithString:@"请输入身高"];
        else
            message=[NSMutableString stringWithString:@"请输入体重"];
        
        UIAlertController *alertController=[UIAlertController alertControllerWithTitle:@"提示" message:message preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okAction=[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
        [alertController addAction:okAction];
        [self presentViewController:alertController animated:YES completion:nil];
        return;
    }
    NSString *score =[self.calculator computeHealthWithHeight:self.txtHeight.text andWeight:self.txtWeight.text];
    if ([score floatValue] < 19)
        self.labelAdvice.text = @"建议：太苗条啦，需要增加营养";
    else if([score floatValue] < 25)
        self.labelAdvice.text = @"建议：哇，你是魔鬼身材";
    else if([score floatValue] < 30)
        self.labelAdvice.text = @"建议：有点发福，要锻炼啦";
    else if([score floatValue] < 39)
        self.labelAdvice.text = @"建议：看来你是一个吃货，快锻炼吧，地球已经快无法承受你的重量啦";
    else
        self.labelAdvice.text = @"建议：再不减肥，死神和你有个约会";
    
    NSString *cuestr = @"体重指数：";
    NSMutableString *tempstr = [NSMutableString stringWithString:cuestr];
    [tempstr appendString:score];
    self.labelScore.text = tempstr;
}

-(void)viewWillAppear:(BOOL)animated{
    [self.btnCalculate.layer setMasksToBounds:YES];
    [self.btnCalculate.layer setCornerRadius:6];
//    [self.btnCalculate.layer setBorderWidth:1];
//    [self.btnCalculate.layer setBorderColor:NULL];
    [self.container.layer setMasksToBounds:YES];
    [self.container.layer setCornerRadius:6];
    [self.container.layer setBorderWidth:1];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    if(textField==self.txtHeight||textField==self.txtWeight){
        [textField resignFirstResponder];
        return YES;
    }
    return NO;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _calculator=[[Calculate alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
