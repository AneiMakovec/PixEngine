//
//  IDamage.h
//  PixEngine
//
//  Created by Anei Makovec on 14/12/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "IDamageable.h"

@protocol IDamageDealer <IDamageable>

@property (nonatomic) float damageStrength;

@optional
- (void) dealDamageToTarget:(id<IDamageable>)target damage:(float)theDamage;

@end
