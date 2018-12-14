//
//  DamageDealer.m
//  PixEngine
//
//  Created by Anei Makovec on 14/12/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import "DamageDealer.h"

@implementation DamageDealer

- (id) initWithHealth:(int)hp damageStrength:(float)theDamageStrength {
    self = [super initWithHealth:hp];
    if (self != nil) {
        damageStrength = theDamageStrength;
    }
    return self;
}

@synthesize damageStrength;

- (void) dealDamageToTarget:(id<IDamageable>)target damage:(int)theDamage {
    [target takeDamage:theDamage];
}

@end
