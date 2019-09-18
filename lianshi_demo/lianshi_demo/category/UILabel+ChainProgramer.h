//
//  UILabel+ChainProgramer.h
//  lianshi_demo
//
//  Created by gcr on 2019/9/9.
//  Copyright © 2019 teamwork. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (ChainProgramer)

- (UILabel *(^)(NSString *text))hr_text;

- (UILabel *(^)(UIColor *color))hr_textColor;

- (UILabel *(^)(UIFont *font))hr_textFont;

- (UILabel *(^)(NSTextAlignment textAlignment))hr_textAlignment;


@end

NS_ASSUME_NONNULL_END
