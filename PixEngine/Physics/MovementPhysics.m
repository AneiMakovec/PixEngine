//
//  MovementPhysics.m
//  PixEngine
//
//  Created by Anei Makovec on 23/11/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import "PixEngine.Scene.h"
#import "PixEngine.Scene.Objects.h"
#import "MovementPhysics.h"

@implementation MovementPhysics

+ (void) simulateMovementOn:(id)item withElapsed:(float)elapsed {
    id<IMovable> movable = [item conformsToProtocol:@protocol(IMovable)] ? item : nil;
    id<IRotatable> rotatable = [item conformsToProtocol:@protocol(IRotatable)] ? item : nil;
    id<ICoefficientOfFriction> friction = [item conformsToProtocol:@protocol(ICoefficientOfFriction)] ? item : nil;
    
    if (movable) {
        if (friction) {
            float coef = 1.0f - friction.coefficientOfFriction;
            [movable.velocity set:[Vector2 multiply:movable.velocity by:coef]];
        }
        
        [movable.position add:[Vector2 multiply:movable.velocity by:elapsed]];
    }
    
    if (rotatable) {
        rotatable.rotationAngle += rotatable.angularVelocity * elapsed;
    }
}

@end
