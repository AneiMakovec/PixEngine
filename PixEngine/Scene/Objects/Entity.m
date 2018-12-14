//
//  Entity.m
//  PixEngine
//
//  Created by Anei Makovec on 14/12/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import "Entity.h"

@implementation Entity

- (id) initWithHealth:(float)hp {
    self = [super init];
    if (self != nil) {
        position = [[Vector2 alloc] init];
        velocity = [[Vector2 alloc] init];
        maxHealthPoints = hp;
        currentHealthPoints = hp;
    }
    return self;
}

@synthesize position, velocity, maxHealthPoints, currentHealthPoints;

- (void) takeDamage:(float)theDamage {
    currentHealthPoints += theDamage;
}

@end
