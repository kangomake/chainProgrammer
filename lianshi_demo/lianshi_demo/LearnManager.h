//
//  LearnManager.h
//  lianshi_demo
//
//  Created by gcr on 2019/9/9.
//  Copyright © 2019 teamwork. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class LearnManager;

typedef LearnManager* (^learnChineseBlock)(NSString *chineseName);
typedef LearnManager* (^learnEnglishBlock)(NSString *englishName);
typedef LearnManager* (^learnFranchBlock)(NSString *franchName);


@interface LearnManager : NSObject

- (learnChineseBlock)learnChinese;
- (learnEnglishBlock)learnEnglise;
- (learnFranchBlock)learnFranch;


@end

NS_ASSUME_NONNULL_END
