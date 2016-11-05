//
//  SecondViewController.h
//  Calculator
//
//  Created by 姚德义 on 16/11/3.
//  Copyright © 2016年 ustc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "advancedCalculator.h"
@interface SecondViewController : UIViewController
@property (nonatomic, strong) advancedCalculator *calculator;//为了在两个视图控制器之间通讯，需要声明在头文件中

@end
