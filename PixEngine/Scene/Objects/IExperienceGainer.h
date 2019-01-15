//
//  IExperienceGainer.h
//  PixEngine
//
//  Created by Anei Makovec on 14/12/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol IExperienceGainer <NSObject>

@property (nonatomic) int currentLevel;
@property (nonatomic) int maxLevel;
@property (nonatomic) int exp;
@property (nonatomic) int currentExp;

- (void) gainExperience:(int)theExp;
- (void) levelUp;

@end
