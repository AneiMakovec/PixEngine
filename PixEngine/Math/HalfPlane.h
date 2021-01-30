//
//  HalfPlane.h
//  PixEngine
//
//  Created by Matej Jan on 2.11.10.
//  Copyright 2010 Retronator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PixEngine.Math.classes.h"

NS_ASSUME_NONNULL_BEGIN

@interface HalfPlane : NSObject {
    float distance;
    Vector2 *normal;
}

- (id) initWithNormal:(Vector2*)theNormal distance:(float)theDistance;

+ (HalfPlane*) halfPlaneWithNormal:(Vector2*)theNormal distance:(float)theDistance;

@property (nonatomic) float distance;
@property (nonatomic, retain) Vector2* normal;

@end

NS_ASSUME_NONNULL_END
