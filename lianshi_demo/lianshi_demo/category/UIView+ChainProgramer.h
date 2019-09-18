//
//  UIView+ChainProgramer.h
//  lianshi_demo
//
//  Created by gcr on 2019/9/9.
//  Copyright © 2019 teamwork. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (ChainProgramer)

+ (instancetype)hr_init;

- (instancetype (^)(CGFloat x, CGFloat y,CGFloat width, CGFloat height))hr_frame;

- (UIView *(^)(CGFloat x))hr_x;

- (UIView *(^)(CGFloat y))hr_y;


- (UIView *(^)(CGFloat width))hr_width;


- (UIView *(^)(CGFloat height))hr_height;

- (UIView * (^)(UIColor *color))hr_backgroundColor;

- (UIView *(^)(UIView *view))hr_addSubView;
- (UIView *)And;


@end

NS_ASSUME_NONNULL_END
