//
//  BattlePosition.m
//  PixEngine
//
//  Created by Anei Makovec on 14/12/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import "BattlePosition.h"

@implementation BattlePosition

- (id) initWithRadius:(float)theRadius {
    self = [super init];
    if (self != nil) {
        position = [[Vector2 alloc] init];
        radius = theRadius;
    }
    return self;
}

@synthesize position, radius;

@end
