//
//  IHealth.h
//  PixEngine
//
//  Created by Anei Makovec on 14/12/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol IDamageable <NSObject>

@property (nonatomic) int maxHealthPoints;
@property (nonatomic) int currentHealthPoints;

- (void) takeDamage:(int)theDamage;

@end
