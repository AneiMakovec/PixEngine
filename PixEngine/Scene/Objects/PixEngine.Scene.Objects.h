//
//  PixEngine.Scene.Objects.h
//  PixEngine
//
//  Created by Anei Makovec on 03/11/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

// movement
#import "IPosition.h"
#import "IVelocity.h"
#import "IMovable.h"
#import "ICustomMovable.h"

// rotation
#import "IRotation.h"
#import "IAngularVelocity.h"
#import "IRotatable.h"

// shapes
#import "IRadius.h"
#import "IRectangleSize.h"

// physical properties
#import "IMass.h"
#import "IAngularMass.h"
#import "ICoefficientOfRestitution.h"
#import "ICoefficientOfFriction.h"

// colliders
#import "IParticleCollider.h"
#import "IHalfPlaneCollider.h"
#import "IAAHalfPlaneCollider.h"
#import "IRectangleCollider.h"
#import "IAARectangleCollider.h"
#import "IConvexCollider.h"
#import "ICustomCollider.h"

// composites
#import "IParticle.h"
#import "IAARectangle.h"
#import "ICircle.h"

// duration
#import "ILifetime.h"
#import "Lifetime.h"
#import "ResetableLifetime.h"

// manipulation
#import "ISceneUser.h"
#import "ICustomUpdate.h"

// combat
#import "IDamageable.h"
#import "IDamageDealer.h"
#import "IExperienceGainer.h"
#import "IExperienceGiver.h"
#import "Entity.h"
#import "DamageDealer.h"
#import "BattlePosition.h"
