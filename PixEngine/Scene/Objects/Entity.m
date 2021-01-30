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
        maxHealthPoints = hp;
        currentHealthPoints = hp;
    }
    return self;
}

@synthesize maxHealthPoints, currentHealthPoints;

- (void) takeDamage:(int)theDamage {
    currentHealthPoints -= theDamage;
}

- (void) heal:(int)amount {
    if (currentHealthPoints < maxHealthPoints) {
        currentHealthPoints += amount;
        
        if (currentHealthPoints > maxHealthPoints)
            currentHealthPoints = maxHealthPoints;
    }
}

- (int) getCurrentHealthPoints {
    return currentHealthPoints;
}

- (int) getMaxHealthPoints {
    return maxHealthPoints;
}
   
@end
