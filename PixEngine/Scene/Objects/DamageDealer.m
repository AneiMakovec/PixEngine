//
//  DamageDealer.m
//  PixEngine
//
//  Created by Anei Makovec on 14/12/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import "DamageDealer.h"

@implementation DamageDealer

- (id) initWithHealth:(int)hp {
    self = [super initWithHealth:hp];
    if (self != nil) {
        targets = [[NSMutableArray alloc] init];
    }
    return self;
}

@synthesize targets;

- (void) dealDamageToTargets {
//    for (id<IDamageable> target in targets)
//        [target takeDamage:damage];
}

- (void) healTargets {
//    for (id<IDamageable> target in targets)
//        [target heal:heal];
}

@end
