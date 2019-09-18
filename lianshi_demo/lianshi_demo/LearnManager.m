//
//  LearnManager.m
//  lianshi_demo
//
//  Created by gcr on 2019/9/9.
//  Copyright © 2019 teamwork. All rights reserved.
//

#import "LearnManager.h"

@implementation LearnManager


- (learnChineseBlock)learnChinese{
    
    return ^LearnManager* (NSString *chineseName){
        NSLog(@"%@", [NSString stringWithFormat:@"学习%@！",chineseName]);
        return self;
    };
    
}


- (learnEnglishBlock)learnEnglise{
    
   
    return ^LearnManager* (NSString *englishName){
        NSLog(@"%@", [NSString stringWithFormat:@"学习%@！",englishName]);
        return self;
    };
    
}


- (learnFranchBlock)learnFranch{
    
    return ^LearnManager* (NSString *franchName){
        NSLog(@"%@", [NSString stringWithFormat:@"学习%@！",franchName]);
        return self;
    };
    
}

@end
