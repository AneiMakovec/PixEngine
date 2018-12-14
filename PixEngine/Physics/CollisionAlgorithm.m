//
//  CollisionAlgorithm.m
//  PixEngine
//
//  Created by Anei Makovec on 23/11/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import "CollisionAlgorithm.h"

#import "PixEngine.Physics.h"

@implementation CollisionAlgorithm

+ (void) collisionBetween:(id)item1 and:(id)item2 {
    [Collision collisionBetween:item1 and:item2 usingAlgorithm:self];
}

+ (BOOL) detectCollisionBetween:(id)item1 and:(id)item2 {return NO;}
+ (void) resolveCollisionBetween:(id)item1 and:(id)item2 {}

@end
