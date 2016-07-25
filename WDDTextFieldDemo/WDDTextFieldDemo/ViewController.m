//
//  ViewController.m
//  WDDTextFieldDemo
//
//  Created by Wdong on 16/7/25.
//  Copyright © 2016年 Wdong. All rights reserved.
//

#import "ViewController.h"
#import "WDDTextField.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    WDDTextField * textField = [[WDDTextField alloc] init];
    textField.frame = CGRectMake(30, 100, 100, 30);
    textField.tintColor = [UIColor redColor];
    textField.textColor = [UIColor purpleColor];
    textField.backgroundColor = [UIColor whiteColor];
    textField.placeholder = @"密码";
    
    textField.placeholderNormalColor= [UIColor yellowColor];
    textField.placeholderHighlightedColor= [UIColor brownColor];
    textField.placeholderNormalFont= [UIFont systemFontOfSize:14];
    textField.placeholderHighlightedFont= [UIFont systemFontOfSize:28];
    [self.view addSubview:textField];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
