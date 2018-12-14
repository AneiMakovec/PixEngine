//
//  PixEngine.Scene.Objects.classes.h
//  PixEngine
//
//  Created by Anei Makovec on 03/11/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

// movement
@protocol IPosition, IVelocity, IMovable;

// rotation
@protocol IRotation, IAngularVelocity, IRotable;

// shapes
@protocol IRadius, IRectangleSize;

// physical properties
@protocol IMass, IAngularMass, ICoefficientOfRestitution, ICoefficientOfFriction;

// colliders
@protocol IParticleCollider, IHalfPlaneCollider, IAAHalfPlaneCollider, IRectangleCollider, IAARectangleCollider, IConvexCollider, ICustomCollider;

// composites
@protocol IParticle, IAARectangle, ICircle;

// other
@protocol ILifetime, ISceneUser, ICustomUpdate;
@class LifeTime;
