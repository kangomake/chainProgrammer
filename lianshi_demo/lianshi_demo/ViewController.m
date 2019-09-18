//
//  ViewController.m
//  lianshi_demo
//
//  Created by gcr on 2019/9/9.
//  Copyright © 2019 teamwork. All rights reserved.
//

#import "ViewController.h"
#import "LearnManager.h"

#import "UIView+ChainProgramer.h"
#import "UILabel+ChainProgramer.h"
#import "UIButton+ChainProgramer.h"

@interface ViewController ()

@end

@implementation ViewController


//链式编程就是一个对象调用它的实例方法后返回一个block（已经定义过），而这个block内部又返回该对象。依此类推，该对象不论调用多少个它的实例方法，最终都会返回该对象本身。

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    LearnManager *learn = [[LearnManager alloc]init];
    //learn对象首先调用方法返回一个block，然后给block传入字符串参数并调用，于是又返回了该对象learn本身
    learn.learnChinese(@"汉语").learnEnglise(@"英语").learnFranch(@"法语");
    
    
    UIView *view = UIView.hr_init.hr_frame(10,100,100,100);
    view.hr_backgroundColor([UIColor orangeColor]);
    self.view.hr_addSubView(view);
    
    
    UILabel *label = UILabel.hr_init.hr_frame(100,300,150,30);
    label.hr_text(@"链式label").hr_textFont([UIFont systemFontOfSize:15]).hr_textColor([UIColor orangeColor]);
    self.view.hr_addSubView(label);
    
    
    UIButton *button = UIButton.hr_initWithType(UIButtonTypeCustom);
    button.hr_frame(150,100,150,60);
    button.hr_titleAndTitleColor(@"链式button",[UIColor blueColor],[UIFont systemFontOfSize:18],UIControlStateNormal);
    button.hr_addTarget(self,@selector(btnClick:),UIControlEventTouchUpInside);
    self.view.hr_addSubView(button);
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)btnClick:(UIButton*)sender{
    NSLog(@"%s__time(%s)__[第%d行]",__FUNCTION__,__TIME__,__LINE__);
}



@end
