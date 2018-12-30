//
//  IHalfPlaneCollider.h
//  PixEngine
//
//  Created by Matej Jan on 2.11.10.
//  Copyright 2010 Retronator. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PixEngine.Math.classes.h"

@protocol IHalfPlaneCollider <NSObject>

@property (nonatomic, readonly) HalfPlane *halfPlane;

@end
