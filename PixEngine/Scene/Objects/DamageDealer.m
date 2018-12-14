//
//  DamageDealer.m
//  PixEngine
//
//  Created by Anei Makovec on 14/12/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import "DamageDealer.h"

@implementation DamageDealer

- (id) initWithHealth:(float)hp damageStrength:(float)theDamageStrength {
    self = [super initWithHealth:hp];
    if (self != nil) {
        damageStrength = theDamageStrength;
    }
    return self;
}

@synthesize damageStrength;

- (void) dealDamageToTarget:(id<IDamageable>)target damage:(float)theDamage {
    [target takeDamage:theDamage];
}

@end
