//
//  AAHalfPlane.h
//  PixEngine
//
//  Created by Anei Makovec on 21/11/2018.
//  Copyright © 2018 Anei Makovec. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HalfPlane.h"

NS_ASSUME_NONNULL_BEGIN

@interface AAHalfPlane : HalfPlane {
    AxisDirection direction;
}

- (id) initWithDirection:(AxisDirection)theDirection distance:(float)theDistance;

+ (AAHalfPlane*) aaHalfPlaneWithDirection:(AxisDirection)theDirection distance:(float)theDistance;

@property (nonatomic) AxisDirection direction;

@end

NS_ASSUME_NONNULL_END
