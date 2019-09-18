//
//  UILabel+ChainProgramer.m
//  lianshi_demo
//
//  Created by gcr on 2019/9/9.
//  Copyright © 2019 teamwork. All rights reserved.
//

#import "UILabel+ChainProgramer.h"

@implementation UILabel (ChainProgramer)

- (UILabel *(^)(NSString *text))hr_text{
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

- (UILabel *(^)(UIColor *color))hr_textColor{
    
    return ^(UIColor *color){
        self.textColor = color;
        return self;
    };
}

- (UILabel *(^)(UIFont *font))hr_textFont{
    
    return ^(UIFont *font){
        self.font = font;
        return self;
    };
}

- (UILabel *(^)(NSTextAlignment textAlignment))hr_textAlignment{
    
    return ^(NSTextAlignment textAlignment){
        self.textAlignment = textAlignment;
        return self;
    };
}


@end
