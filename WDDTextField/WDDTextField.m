//
//  WDDTextField.m
//  WDDTextField
//
//  Created by Wdong on 16/7/25.
//  Copyright © 2016年 Wdong. All rights reserved.
//  Github：https://github.com/Cehae

#import "WDDTextField.h"

static NSString * const WDDPlaceholderColorkeyPath = @"_placeholderLabel.textColor";
static NSString * const WDDPlaceholderFontPath = @"_placeholderLabel.font";

@implementation WDDTextField

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self awakeFromNib];
    }
    return self;
}
- (void)awakeFromNib
{
    // 设置光标颜色和文字颜色一致
    self.tintColor = self.textColor;
    // 不成为第一响应者
    [self resignFirstResponder];
}

/**
 * 当前文本框聚焦时就会调用
 */
- (BOOL)becomeFirstResponder
{
    // 修改占位文字字体大小
    if (self.placeholderHighlightedFont) {
        [self setValue:self.placeholderHighlightedFont forKeyPath:WDDPlaceholderFontPath];
    }else
    {
        [self setValue:self.font forKeyPath:WDDPlaceholderFontPath];
    }
    
    // 修改占位文字颜色
    if (self.placeholderHighlightedColor) {
        [self setValue:self.placeholderHighlightedColor forKeyPath:WDDPlaceholderColorkeyPath];
    }else
    {
        [self setValue:self.textColor forKeyPath:WDDPlaceholderColorkeyPath];
    }
    return [super becomeFirstResponder];
}

/**
 * 当前文本框失去焦点时就会调用
 */
- (BOOL)resignFirstResponder
{
    // 修改占位文字字体大小
    if (self.placeholderNormalFont) {
        [self setValue:self.placeholderNormalFont forKeyPath:WDDPlaceholderFontPath];
    }else
    {
        [self setValue:self.font forKeyPath:WDDPlaceholderFontPath];
    }
    
    // 修改占位文字颜色
    if (self.placeholderNormalColor) {
        [self setValue:self.placeholderNormalColor forKeyPath:WDDPlaceholderColorkeyPath];
    }else
    {
        [self setValue:self.textColor forKeyPath:WDDPlaceholderColorkeyPath];
    }
    return [super resignFirstResponder];
}
@end
