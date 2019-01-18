//
//  IHealth.h
//  PixEngine
//
//  Created by Anei Makovec on 14/12/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BattlePosition.h"

@protocol IDamageable <NSObject>

@property (nonatomic) int maxHealthPoints;
@property (nonatomic) int currentHealthPoints;

- (void) takeDamage:(int)theDamage;
- (void) takePercentDamage:(float)theDamage;

- (void) heal:(int)amount;
- (int) healPercent:(float)heal;

@end
