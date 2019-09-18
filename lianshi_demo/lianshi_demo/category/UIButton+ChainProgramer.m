//
//  UIButton+ChainProgramer.m
//  lianshi_demo
//
//  Created by gcr on 2019/9/9.
//  Copyright © 2019 teamwork. All rights reserved.
//

#import "UIButton+ChainProgramer.h"

@implementation UIButton (ChainProgramer)

+ (UIButton *(^)(UIButtonType buttonType))hr_initWithType{
    
    return ^(UIButtonType buttonType){
        return [UIButton buttonWithType:buttonType];
    };
}

- (UIButton *(^)(id target, SEL sel, UIControlEvents event))hr_addTarget{
    
    return ^(id target, SEL sel, UIControlEvents event){
        
        [self addTarget:target action:sel forControlEvents:event];
        return self;
    };
}

- (UIButton *(^)(NSString*text, UIControlState state))hr_title{
    return ^(NSString *text, UIControlState state){
        [self setTitle:text forState:state];
        return self;
    };
}

- (UIButton *(^)(UIColor *color, UIControlState state))hr_titleColor
{
    return ^(UIColor *color, UIControlState state)
    {
        [self setTitleColor:color forState:state];
        return self;
    };
}

- (UIButton *(^)(UIFont *font))hr_titleFont
{
    return ^(UIFont *font)
    {
        self.titleLabel.font = font;
        return self;
    };
}

- (UIButton *(^)(NSString *text, UIColor *color, UIFont *font, UIControlState state))hr_titleAndTitleColor
{
    return ^(NSString *text, UIColor *color, UIFont *font, UIControlState state)
    {
        self.titleLabel.font = font;
        [self setTitle:text forState:state];
        [self setTitleColor:color forState:state];
        
        return self;
    };
    
}

@end
