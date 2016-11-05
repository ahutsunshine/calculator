//
//  SecondViewController.m
//  Calculator
//
//  Created by 姚德义 on 16/11/3.
//  Copyright © 2016年 ustc. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputResult;
@property (weak, nonatomic) IBOutlet UIButton *btnLeftBracket;
@property (weak, nonatomic) IBOutlet UIButton *btRightBracket;
@property (weak, nonatomic) IBOutlet UIButton *btnE;
@property (weak, nonatomic) IBOutlet UIButton *btnPi;


@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)touchMethod:(UIButton *)sender {
    
    if(sender.tag==0||sender.tag==1||sender.tag==2||sender.tag==3){
        if([[[sender titleLabel]text] isEqualToString:@"e"]){
            [self.calculator.input appendString:@"2.7182818"];
        }else if([[[sender titleLabel]text] isEqualToString:@"pi"]){
            [self.calculator.input appendString:@"3.1415926"];
        }else{
            [self.calculator.input appendString:[[sender titleLabel]text]];
        }
        NSMutableString *str=[NSMutableString stringWithString:self.inputResult.text];
        [str appendString:[[sender titleLabel] text]];
        self.inputResult.text=str;
        self.calculator.screen=str;
        
    }else if(sender.tag==4){
        self.inputResult.text=[self.calculator abs:self.calculator.input];
        NSMutableString *str=[NSMutableString stringWithString:self.inputResult.text];
        self.calculator.input=str;
        self.calculator.screen=str;
        
    }else if(sender.tag==5){
        self.inputResult.text=[self.calculator sqrt:self.calculator.input];
        NSMutableString *str=[NSMutableString stringWithString:self.inputResult.text];
        self.calculator.input=str;
        self.calculator.screen=str;
        
    }else if(sender.tag==6){
        self.inputResult.text=[self.calculator reciprocal:self.calculator.input];
        NSMutableString *str=[NSMutableString stringWithString:self.inputResult.text];
        self.calculator.input=str;
        self.calculator.screen=str;
        
    }else if(sender.tag==7){
        self.inputResult.text=[self.calculator pow2:self.calculator.input];
        NSMutableString *str=[NSMutableString stringWithString:self.inputResult.text];
        self.calculator.input=str;
        self.calculator.screen=str;
        
    }else if(sender.tag==8){
        self.inputResult.text=[self.calculator sin:self.calculator.input];
        NSMutableString *str=[NSMutableString stringWithString:self.inputResult.text];
        self.calculator.input=str;
        self.calculator.screen=str;
        
    }else if(sender.tag==9){
        self.inputResult.text=[self.calculator cos:self.calculator.input];
        NSMutableString *str=[NSMutableString stringWithString:self.inputResult.text];
        self.calculator.input=str;
        self.calculator.screen=str;
        
    }else if(sender.tag==10){
        self.inputResult.text=[self.calculator tan:self.calculator.input];
        NSMutableString *str=[NSMutableString stringWithString:self.inputResult.text];
        self.calculator.input=str;
        self.calculator.screen=str;
        
    }else if(sender.tag==11){
        self.inputResult.text=[self.calculator pow3:self.calculator.input];
        NSMutableString *str=[NSMutableString stringWithString:self.inputResult.text];
        self.calculator.input=str;
        self.calculator.screen=str;
        
    }else if(sender.tag==12){
        self.inputResult.text=[self.calculator arcsin:self.calculator.input];
        NSMutableString *str=[NSMutableString stringWithString:self.inputResult.text];
        self.calculator.input=str;
        self.calculator.screen=str;
        
    }else if(sender.tag==13){
        self.inputResult.text=[self.calculator arccos:self.calculator.input];
        NSMutableString *str=[NSMutableString stringWithString:self.inputResult.text];
        self.calculator.input=str;
        self.calculator.screen=str;
        
    }else if(sender.tag==14){
        self.inputResult.text=[self.calculator arctan:self.calculator.input];
        NSMutableString *str=[NSMutableString stringWithString:self.inputResult.text];
        self.calculator.input=str;
        self.calculator.screen=str;
        
    }else if(sender.tag==15){
        self.inputResult.text=[self.calculator log10:self.calculator.input];
        NSMutableString *str=[NSMutableString stringWithString:self.inputResult.text];
        self.calculator.input=str;
        self.calculator.screen=str;
        
    }else if(sender.tag==16){
        self.inputResult.text=[self.calculator sinh:self.calculator.input];
        NSMutableString *str=[NSMutableString stringWithString:self.inputResult.text];
        self.calculator.input=str;
        self.calculator.screen=str;
        
    }else if(sender.tag==17){
        self.inputResult.text=[self.calculator cosh:self.calculator.input];
        NSMutableString *str=[NSMutableString stringWithString:self.inputResult.text];
        self.calculator.input=str;
        self.calculator.screen=str;
        
    }else if(sender.tag==18){
        self.inputResult.text=[self.calculator tanh:self.calculator.input];
        NSMutableString *str=[NSMutableString stringWithString:self.inputResult.text];
        self.calculator.input=str;
        self.calculator.screen=str;
        
    }else if(sender.tag==19){
        self.inputResult.text=[self.calculator log10:self.calculator.input];
        NSMutableString *str=[NSMutableString stringWithString:self.inputResult.text];
        self.calculator.input=str;
        self.calculator.screen=str;
        
    }
    
}
-(void)viewWillAppear:(BOOL)animated{
    //将视图刚要显示的时候，将传递过来的内容在屏幕中显示
    self.inputResult.text=self.calculator.screen;
}

@end
