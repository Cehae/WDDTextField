//
//  WDDTextField.h
//  WDDTextField
//
//  Created by Wdong on 16/7/25.
//  Copyright © 2016年 Wdong. All rights reserved.
//  Github：https://github.com/Cehae

#import <UIKit/UIKit.h>

@interface WDDTextField : UITextField
/**
 *  正常时的颜色
 */
@property(nonatomic,strong) UIColor * placeholderNormalColor;
/**
 *  正常时的字体大小
 */
@property(nonatomic,strong) UIFont * placeholderNormalFont;
/**
 *  高亮时的颜色
 */
@property(nonatomic,strong) UIColor * placeholderHighlightedColor;
/**
 *  高亮时的字体大小
 */
@property(nonatomic,strong) UIFont * placeholderHighlightedFont;

@end
