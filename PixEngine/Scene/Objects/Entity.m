//
//  Entity.m
//  PixEngine
//
//  Created by Anei Makovec on 14/12/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import "Entity.h"

@implementation Entity

- (id) initWithHealth:(int)hp {
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

- (void) takeDamage:(int)theDamage {
    currentHealthPoints -= theDamage;
}

- (void) takePercentDamage:(float)theDamage {
    float percent = 1.0f - theDamage;
    currentHealthPoints *= percent;
}

- (void) heal:(int)amount {
    if (currentHealthPoints < maxHealthPoints) {
        currentHealthPoints += amount;
        
        if (currentHealthPoints > maxHealthPoints)
            currentHealthPoints = maxHealthPoints;
    }
}

- (int) healPercent:(float)heal {
    int amount = (float)maxHealthPoints * heal;
    
    if (currentHealthPoints < maxHealthPoints) {
        [self heal:amount];
    }
    
    return amount;
}
   
@end
