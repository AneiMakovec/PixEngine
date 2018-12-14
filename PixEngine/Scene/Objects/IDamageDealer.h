//
//  IDamage.h
//  PixEngine
//
//  Created by Anei Makovec on 14/12/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol IDamageDealer <NSObject>

@property (nonatomic) float damageStrength;

- (void) dealDamageToTarget:(id<IDamageable>)target damage:(int)theDamage;

@end
