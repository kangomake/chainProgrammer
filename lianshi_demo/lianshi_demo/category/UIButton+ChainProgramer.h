//
//  UIButton+ChainProgramer.h
//  lianshi_demo
//
//  Created by gcr on 2019/9/9.
//  Copyright © 2019 teamwork. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (ChainProgramer)

+ (UIButton *(^)(UIButtonType buttonType))hr_initWithType;

- (UIButton *(^)(id target, SEL sel, UIControlEvents event))hr_addTarget;

- (UIButton *(^)(NSString*text, UIControlState state))hr_title;

- (UIButton *(^)(UIColor *color, UIControlState state))hr_titleColor;

- (UIButton *(^)(UIFont *font))hr_titleFont;

- (UIButton *(^)(NSString *text, UIColor *color, UIFont *font, UIControlState state))hr_titleAndTitleColor;

@end

NS_ASSUME_NONNULL_END
