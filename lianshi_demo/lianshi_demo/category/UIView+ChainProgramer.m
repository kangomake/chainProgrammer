//
//  UIView+ChainProgramer.m
//  lianshi_demo
//
//  Created by gcr on 2019/9/9.
//  Copyright © 2019 teamwork. All rights reserved.
//

#import "UIView+ChainProgramer.h"

@interface UIView (){
    id object;
}

@end


@implementation UIView (ChainProgramer)

+ (instancetype)hr_init{
    return  [[[self class] alloc] init];
}

//instancetype作为block内部返回值时，无法连续"."调用其他方法，具体原因我也不是很清楚，感觉有点奇葩
- (instancetype (^)(CGFloat x, CGFloat y,CGFloat width, CGFloat height))hr_frame{
    
    return ^(CGFloat x, CGFloat y, CGFloat width, CGFloat height){
        CGRect frame = self.frame;
        frame.origin.x = x;
        frame.origin.y = y;
        frame.size.width = width;
        frame.size.height = height;
        self.frame = frame;
        return self;
    };
    
}

- (UIView *(^)(CGFloat x))hr_x{
    
    return ^(CGFloat x){
      
        CGRect frame = self.frame;
        frame.origin.x = x;
        self.frame = frame;
        return self;
    };
    
}

- (UIView *(^)(CGFloat y))hr_y
{
    return ^(CGFloat y)
    {
        CGRect frame = self.frame;
        frame.origin.y = y;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGFloat width))hr_width
{
    return ^(CGFloat width)
    {
        CGRect frame = self.frame;
        frame.size.width = width;
        self.frame = frame;
        return self;
    };
}


- (UIView *(^)(CGFloat height))hr_height
{
    return ^(CGFloat height)
    {
        CGRect frame = self.frame;
        frame.size.height = height;
        self.frame = frame;
        return self;
    };
}

- (UIView * (^)(UIColor *color))hr_backgroundColor{
    return ^(UIColor *color){
        self.backgroundColor = color;
        return self;
    };
}

- (UIView *(^)(UIView *view))hr_addSubView
{
    return ^(UIView *view)
    {
        [self addSubview:view];
        return self;
    };
}

- (UIView *)And
{
    return self;
}


@end
